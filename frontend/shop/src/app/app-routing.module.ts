import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';


const appRoutes: Routes = [

 //{path: '', redirectTo: '/products',pathMatch: 'full'},
  //{path: '**', redirectTo: '/products', pathMatch: 'full'},
  {
    path: 'products',
    loadChildren: () =>
      import("./products/products.module").then(m => m.ProductsModule)
  },
  {
    path: 'orders',
    loadChildren: () =>
      import("./orders/orders.module").then(m => m.OrdersModule)
  },
  {
    path: 'auth',
    loadChildren: () =>
      import("./auth/auth.module").then(m => m.AuthModule)
  },
  {
    path:'cart-details',
    loadChildren: () =>
      import("./cart-details/cart-details.module").then(m => m.CartDetailsModule)
  }
];

@NgModule({
  imports: [RouterModule.forRoot(appRoutes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
