import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormControl, FormGroup, Validators} from "@angular/forms";
import {CartService} from "../cart-details/cart.service";
import {CheckoutService} from "./checkout.service";
import {Router} from "@angular/router";
import {ShopValidators} from "../validators/shop-validators";
import {OrderElement} from "../shared/order-element.model";
import {Order} from "../shared/order.model";

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.css']
})
export class CheckoutComponent implements OnInit {
  checkoutFormGroup!: FormGroup;
  totalPrice: number = 0;
  totalQuantity:number = 0;

  constructor(private formBuilder: FormBuilder,
              private cartService:CartService,
              private checkoutService:CheckoutService,
              private router: Router) { }

  ngOnInit(): void {
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
    order.user = this.checkoutFormGroup.controls['user'].value;
    order.orderElements = orderElements;
    order.date = new Date().getDate();
    order.totalPrice = this.totalPrice;
    this.checkoutService.placeOrder(order).subscribe();
  }

  get firstName() { return this.checkoutFormGroup.get('customer.firstName');}
  get lastName() { return this.checkoutFormGroup.get('customer.lastName');}
  get email() { return this.checkoutFormGroup.get('customer.email');}
}
