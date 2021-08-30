import {Component, OnDestroy, OnInit} from "@angular/core";
import {Subscription} from "rxjs";
import {AuthService} from "../auth/auth.service";
import {Router} from "@angular/router";
import {ProductService} from "../products/product.service";

class Products {
}

@Component({
  selector: 'app-header',
  templateUrl:'header.component.html'
})
export class HeaderComponent implements OnInit, OnDestroy{
  isAuthenticated = false;
  products: Products[];
  keyword = '';
  private userSub: Subscription;
  constructor(private authService: AuthService,
              private router: Router,
              private productService: ProductService) {
  }

  ngOnInit() {
    this.userSub = this.authService.currentUser.subscribe( currentUser => {
      this.isAuthenticated = !! currentUser;
    })
  }

  onLogout() {
    this.authService.logout();
  }

  ngOnDestroy() {
    this.userSub.unsubscribe();
  }


}
