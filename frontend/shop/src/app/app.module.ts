import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {HeaderComponent} from "./header/header.component";
import { AuthComponent } from './auth/auth.component';
import { SearchComponent } from './search/search.component';
import { ProductListComponent } from './product-list/product-list.component';
import {ProductDetailsComponent} from "./product-list/product-details/product-details.component";
import { CartDetailsComponent } from './cart-details/cart-details.component';
import {ReactiveFormsModule} from "@angular/forms";
import {HttpClientModule} from "@angular/common/http";
import { CheckoutComponent } from './checkout/checkout.component';
import { ProductEditComponent } from './product-list/product-edit/product-edit.component';
import { LoginComponent } from './auth/login/login.component';
import { SignupComponent } from './auth/signup/signup.component';
import { ProductTypeComponent } from './product-list/product-type/product-type.component';
import {DropdownDirective} from "./shared/dropdown.directive";
import { MyAccountComponent } from './my-account/my-account.component';
import { OrdersComponent } from './orders/orders.component';


@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    AuthComponent,
    SearchComponent,
    ProductListComponent,
    ProductDetailsComponent,
    CartDetailsComponent,
    CheckoutComponent,
    ProductEditComponent,
    LoginComponent,
    SignupComponent,
    ProductTypeComponent,
    DropdownDirective,
    MyAccountComponent,
    OrdersComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
