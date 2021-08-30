import {HttpClient} from "@angular/common/http";
import {Injectable} from "@angular/core";
import {User} from "./user.model";
import {BehaviorSubject} from "rxjs";
import { tap} from "rxjs/operators";
import {Router} from "@angular/router";
import {UserData} from "./user-data.model";

export interface AuthResponseData {
  id: number;
  username: string;
  firstname: string;
  lastname:string;

}

@Injectable({providedIn:'root'})
export class AuthService {
  private baseUrl = 'http://localhost:8080/users/';
  private loginUrl = 'http://localhost:8080/users/login';
  private saveUrl =  'http://localhost:8080/users/save/';
  currentUser = new BehaviorSubject<UserData>(null);
  private token: string;

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
    return this.http.post<AuthResponseData>(this.loginUrl,{username, password})
      .pipe(
        tap( resData =>{
        this.handleAuthentication(
          resData.username,
          resData.id
        )
      }
    ));
  }

  private handleAuthentication(
    username: string,
    userId: number
  ) {
    const userData = new UserData(username, userId);
    this.currentUser.next(userData);
    localStorage.setItem('userData', JSON.stringify(userData));
  }


  signup(user: User) {
    return this.http.post<User>(this.saveUrl,user);

  }
  getUserById(id: number){
    return this.http.get<User>(this.baseUrl + id);
  }

  logout() {
    this.currentUser.next(null);
    this.router.navigate(['/auth/login']);
    localStorage.removeItem('userData');
  }
  isUserLoggedIn() {
    let user = localStorage.getItem('userData');
    if (user === null) return false;
    return true;
  }

  getLoggedInUser() {
    let user = JSON.parse(localStorage.getItem('userData'));
    if (user === null) return ''
    return user
  }
////////////////////////////////////////
  public saveToken(token: string): void {
    this.token = token;
    localStorage.setItem('token', token);
  }


  public loadToken(): void {
    this.token = localStorage.getItem('token');
  }

  public getToken(): string {
    return this.token;
  }



}
