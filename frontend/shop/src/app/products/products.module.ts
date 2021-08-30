import {NgModule} from "@angular/core";
import {SearchComponent} from "./search/search.component";
import {ProductsListComponent} from "./products-list/products-list.component";
import {ProductDetailsComponent} from "./products-list/product-details/product-details.component";
import {ProductEditComponent} from "./products-list/product-edit/product-edit.component";
import {ProductTypeComponent} from "./products-list/product-type/product-type.component";
import {ProductsComponent} from "./products.component";
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {RouterModule} from "@angular/router";
import {NgxPaginationModule} from "ngx-pagination";
import {ProductsRoutingModules} from "./products-routing.modules";
import {CommonModule} from "@angular/common";
import {SharedModule} from "../shared/shared.module";

@NgModule({
  declarations: [
    ProductsComponent,
    SearchComponent,
    ProductsListComponent,
    ProductDetailsComponent,
    ProductEditComponent,
    ProductTypeComponent,


  ],
  exports: [
    ProductTypeComponent,
    SearchComponent
  ],
  imports: [
    RouterModule,
    CommonModule,
    ProductsRoutingModules,
    FormsModule,
    ReactiveFormsModule,
    NgxPaginationModule,
    SharedModule

  ]
})
export class ProductsModule{}
