import {NgModule} from "@angular/core";
import {CartDetailsComponent} from "../cart-details/cart-details.component";
import {CheckoutComponent} from "./checkout/checkout.component";
import {OrdersComponent} from "./orders.component";
import {OrdersRoutingModule} from "./orders-routing.module";
import {OrdersListComponent} from "./orders-list/orders-list.component";
import {ReactiveFormsModule} from "@angular/forms";
import {CommonModule} from "@angular/common";
import {RouterModule} from "@angular/router";

@NgModule({
  declarations: [
    OrdersComponent,
    CheckoutComponent,
    OrdersListComponent
  ],
  imports:[
    RouterModule,
    ReactiveFormsModule,
    CommonModule,
    OrdersRoutingModule
  ]
}
)
export class OrdersModule{}
