import {ProductsListComponent} from "./products-list/products-list.component";
import {ProductEditComponent} from "./products-list/product-edit/product-edit.component";
import {ProductDetailsComponent} from "./products-list/product-details/product-details.component";
import {RouterModule, Routes} from "@angular/router";
import {NgModule} from "@angular/core";
import {ProductsComponent} from "./products.component";
const routes: Routes = [
  {path: '',
  component: ProductsComponent,
  children: [
    {path:'', component: ProductsListComponent},
    {path:'type/:type', component:ProductsListComponent},
    {path: 'search/:keyword', component: ProductsListComponent},
    {path: 'new', component: ProductEditComponent},
    {path: ':id', component: ProductDetailsComponent},
    {path: ':id/edit', component: ProductEditComponent},
  ]
  }

];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ProductsRoutingModules{}
