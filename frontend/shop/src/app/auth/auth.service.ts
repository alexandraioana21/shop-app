import {HttpClient} from "@angular/common/http";
import {Injectable} from "@angular/core";
import {User} from "../shared/user.model";
import {UserSave} from "../shared/user-save.model";
import {BehaviorSubject, Observable} from "rxjs";
import {map} from "rxjs/operators";
import {Router} from "@angular/router";
import {Role} from "../shared/role.enum";

@Injectable({providedIn:'root'})
export class AuthService {
  private loginUrl = 'http://localhost:8080/users/login';
  private saveUrl =  'http://localhost:8080/users/save/';
  currentUser = new BehaviorSubject<User>(null);

  constructor(private http: HttpClient,
              private router:Router) {
  }


  autoLogin() {
    const userData: {
      username: string;
      id:number
    }=  JSON.parse(localStorage.getItem('userData'));
    if (!userData) {
      return;
    }
  }

  login(username: string, password: string) {
    let user: User = {
      username: username,
      password: password
    };
    return this.http.post<User>(this.loginUrl,user)
      .pipe(map( user =>{
        localStorage.setItem('userData',JSON.stringify(user));
        this.currentUser.next(user);
        return user
      }
    ));
  }


  signup(user: UserSave) {
    return this.http.post<User>(this.saveUrl,user);
  }

  logout() {
    this.currentUser.next(null);
    this.router.navigate(['/login']);
    localStorage.removeItem('userData');
  }
  isUserLoggedIn() {
    let user = localStorage.getItem('userData');
    if (user === null) return false;
    return true;
  }

  getLoggedInUser() {
    let user = localStorage.getItem('userData')
    if (user === null) return ''
    return user
  }

  // public get isAdmin(): boolean {
  //   return this.getUserRole() === Role.ADMIN ;
  // }
  // private getUserRole(): string {
  //   return this.authenticationService.getUserFromLocalCache().role;
  // }
}
