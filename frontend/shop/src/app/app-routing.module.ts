import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {AuthComponent} from "./auth/auth.component";
import {ProductListComponent} from "./product-list/product-list.component";
import {ProductDetailsComponent} from "./product-list/product-details/product-details.component";
import {CartDetailsComponent} from "./cart-details/cart-details.component";
import {CheckoutComponent} from "./checkout/checkout.component";
import {ProductEditComponent} from "./product-list/product-edit/product-edit.component";
import {LoginComponent} from "./auth/login/login.component";
import {SignupComponent} from "./auth/signup/signup.component";
import {SearchComponent} from "./search/search.component";
import {MyAccountComponent} from "./my-account/my-account.component";
import {OrdersComponent} from "./orders/orders.component";

const routes: Routes = [

  {path: 'search/:keyword', component: ProductListComponent},
  {path:'login', component:LoginComponent},
  {path:'signup', component:SignupComponent},
  {path:'type/:type', component:ProductListComponent},
  {path:'orders', component:OrdersComponent},
  {path:'my-account', component:MyAccountComponent},
  {path:'products', component:ProductListComponent},
  {path: 'products/new', component: ProductEditComponent},
  {path: 'products/:id', component: ProductDetailsComponent},
  {path: 'products/:id/edit', component: ProductEditComponent},
  {path: 'cart-details', component: CartDetailsComponent},
  {path: 'checkout', component: CheckoutComponent},
  {path: '', redirectTo: '/products',pathMatch: 'full'},
  {path: '**', redirectTo: '/products', pathMatch: 'full'},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
