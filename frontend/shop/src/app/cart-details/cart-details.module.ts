import {NgModule} from "@angular/core";
import {CartDetailsComponent} from "./cart-details.component";
import {RouterModule} from "@angular/router";
import {ReactiveFormsModule} from "@angular/forms";
import {CommonModule} from "@angular/common";

@NgModule({
    declarations: [
      CartDetailsComponent,
    ],
    imports:[
      ReactiveFormsModule,
      CommonModule,
      RouterModule.forChild([{ path: '', component: CartDetailsComponent}])
    ]
  }
)
export class CartDetailsModule{}
