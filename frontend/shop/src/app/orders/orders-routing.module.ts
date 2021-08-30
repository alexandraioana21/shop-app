import {RouterModule, Routes} from "@angular/router";
import {CartDetailsComponent} from "../cart-details/cart-details.component";
import {CheckoutComponent} from "./checkout/checkout.component";
import {OrdersComponent} from "./orders.component";
import {NgModule} from "@angular/core";
import {OrdersListComponent} from "./orders-list/orders-list.component";

const oRoutes: Routes = [
  {path: '',component: OrdersComponent,
    children: [
      {path: 'checkout', component: CheckoutComponent},
      {path:'orders-list', component:OrdersListComponent},
    ]}

  ];

@NgModule({
  imports: [RouterModule.forChild(oRoutes)],
  exports: [RouterModule]
})
export class OrdersRoutingModule { }
