import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {AuthComponent} from "./auth/auth.component";
import {ProductListComponent} from "./product-list/product-list.component";
import {ProductDetailsComponent} from "./product-list/product-details/product-details.component";
import {CartDetailsComponent} from "./cart-details/cart-details.component";

const routes: Routes = [
  {path: '', redirectTo: '/products',pathMatch: 'full'},
  {path:'auth', component:AuthComponent},
  {path:'products',component:ProductListComponent, children: [
      {path:':id',component:ProductDetailsComponent}
    ]},
  {path: 'cart-details', component: CartDetailsComponent},
  {path: 'search/:keyword', component: ProductListComponent},
  {path: '**', redirectTo: '/products', pathMatch: 'full'},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
