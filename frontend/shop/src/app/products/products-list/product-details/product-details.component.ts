import {Product} from "../../product.model";
import {Component, OnInit} from "@angular/core";
import {ProductService} from "../../product.service";
import {ActivatedRoute, Router} from "@angular/router";
import {CartItem} from "../../../cart-details/cart-item.model";
import {CartService} from "../../../cart-details/cart.service";
import {Subject, Subscription} from "rxjs";
import {first} from "rxjs/operators";
import {SubscribeOnObservable} from "rxjs/internal-compatibility";
import {AuthService} from "../../../auth/auth.service";


@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.css']
})
export class ProductDetailsComponent implements OnInit{
product:Product = new Product();
products: Product[] = [];
private userSub: Subscription;
isAuthenticated = false;

constructor(private productService:ProductService,
            private route:ActivatedRoute,
            private cartService:CartService,
            private router:Router,
            private authService: AuthService) {
}

  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.handleProductDetails();
    })

    this.userSub = this.authService.currentUser.subscribe( currentUser => {
      this.isAuthenticated = !! currentUser;
    })
  }

  handleProductDetails() {
    const theProductId: number = +this.route.snapshot.paramMap.get('id');
    this.productService.getProduct(theProductId).subscribe(
      data => {
        this.product = data;
      }
    )
  }
  addToCart(){
    const theCartItem = new CartItem(this.product);
    this.cartService.addToCart(theCartItem);
  }

  onEditProduct() {
    this.router.navigate(['edit'],{relativeTo:this.route});
  }

  deleteProduct(product: Product) {
    this.productService.deleteProduct(product.id).subscribe({
      next: () => {
      this.router.navigate(['../'], { relativeTo: this.route });
    }}
    );



  }
}
