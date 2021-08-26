import {Component} from "@angular/core";
import {Subscription} from "rxjs";
import {AuthService} from "../auth/auth.service";
import {Router} from "@angular/router";
import {ProductService} from "../product-list/product.service";

class Products {
}

@Component({
  selector: 'app-header',
  templateUrl:'header.component.html'
})
export class HeaderComponent {
  isAuthenticated = false;
  products: Products[];
  keyword = '';
  //private userSub: Subscription;
  constructor(private authService: AuthService,
              private router: Router,
              private productService: ProductService) {
  }

  ngOnInit() {

  }

  onLogout() {
    this.authService.logout();
  }


}
