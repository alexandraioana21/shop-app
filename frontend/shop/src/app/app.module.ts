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

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    AuthComponent,
    SearchComponent,
    ProductListComponent,
    ProductDetailsComponent,
    CartDetailsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
