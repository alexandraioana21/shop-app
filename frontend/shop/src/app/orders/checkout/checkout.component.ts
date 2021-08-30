import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormControl, FormGroup, Validators} from "@angular/forms";
import {CartService} from "../../cart-details/cart.service";
import {Router} from "@angular/router";
import {ShopValidators} from "../../shared/validators/shop-validators";
import {OrderElement} from "../order-element.model";
import {Order} from "../order.model";
import {OrdersService} from "../orders.service";
import {UserData} from "../../auth/user-data.model";
import {AuthService} from "../../auth/auth.service";
import {DatePipe} from "@angular/common";

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.css'],
  providers:[DatePipe]
})
export class CheckoutComponent implements OnInit {
  checkoutFormGroup!: FormGroup;
  currentUserData : UserData;
  totalPrice: number = 0;
  totalQuantity:number = 0;
  private myDate: Date;

  constructor(private formBuilder: FormBuilder,
              private cartService:CartService,
              private ordersService:OrdersService,
              private datePipe: DatePipe,
              private authService:AuthService) { }

  ngOnInit(): void {
    this.currentUserData = JSON.parse(localStorage.getItem('userData'));
    this.checkoutFormGroup = this.formBuilder.group({
      user: this.formBuilder.group({
        firstName: new FormControl('',
          [Validators.required, Validators.minLength(2), ShopValidators.notOnlyWhitespace]
        ),
        lastName: new FormControl('',
          [Validators.required, Validators.minLength(2), ShopValidators.notOnlyWhitespace],
        ),
        email: new FormControl('',
          [Validators.required,
            Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$')])
      }),

    });
    this.reviewCartDetails();
  }
    reviewCartDetails() {
      this.cartService.totalQuantity.subscribe(
        totalQuantity => this.totalQuantity = totalQuantity
      );
      this.cartService.totalPrice.subscribe(
        totalPrice => this.totalPrice = totalPrice
      );
    }


  onSubmit() {
    console.log("Handling the submit button");
    if(this.checkoutFormGroup.invalid) {
      this.checkoutFormGroup.markAllAsTouched();
      return;
    }
    const cartItems = this.cartService.cartItems;
    let orderElements: OrderElement[]= cartItems.map(tempCartItem => new OrderElement(tempCartItem));
    let order = new Order();

    order.user=this.checkoutFormGroup.controls['user'].value;
    order.user.id=this.currentUserData.id;
    order.elements = orderElements;
    this.myDate = new Date();
    order.date = this.datePipe.transform(this.myDate, 'yyyy-MM-dd');

    order.totalPrice = this.totalPrice;
    this.ordersService.placeOrder(order).subscribe();
  }


  get firstName() { return this.checkoutFormGroup.get('user.firstName');}
  get lastName() { return this.checkoutFormGroup.get('user.lastName');}
  get email() { return this.checkoutFormGroup.get('user.email');}
}
