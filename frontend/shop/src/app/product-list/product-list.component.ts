import { Component, OnInit } from '@angular/core';
import {Product} from "../shared/product.model";
import {ActivatedRoute, Router} from "@angular/router";
import {ProductService} from "./product.service";
import {CartItem} from "../shared/cart-item.model";
import {CartService} from "../cart-details/cart.service";


@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {
  products: Product[] =[];
  searchMode: boolean;

  constructor(private route: ActivatedRoute,
              private productService: ProductService,
              private cartService: CartService,
              private router: Router) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.listProducts();
    });
  }
  listProducts() {
    this.searchMode = this.route.snapshot.paramMap.has('keyword');

    if (this.searchMode) {
      this.handleSearchProducts();
    }
    else {
      this.handleListProducts();
    }
  }
  handleListProducts() {

    const type:string = this.route.snapshot.paramMap.get('type');
    const hasType: boolean = this.route.snapshot.paramMap.has('type');
    if(hasType) {
      this.productService.getProductsByType(type).subscribe(
        data => {
          this.products = data;
        }
      )
    }else {


      this.productService.getProductsList().subscribe(
        data => {
          this.products = data;
        }
      )
    }
  }
  handleSearchProducts() {

    const theKeyword: string = this.route.snapshot.paramMap.get('keyword');
    this.productService.searchProducts(theKeyword).subscribe(
      data => {
        this.products = data;
      }
    )
  }

  addToCart ( theProduct: Product) {
    console.log(`Adding to cart: ${theProduct.name}, ${theProduct.price}`);
    const theCartItem = new CartItem(theProduct);

    this.cartService.addToCart(theCartItem);

  }
  onNewProduct() {
    this.router.navigate(['new'],{relativeTo:this.route});
  }




  }
