import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DropdownDirective } from './dropdown.directive';
import {FormsModule, ReactiveFormsModule} from "@angular/forms";


@NgModule({
  declarations: [
    DropdownDirective,
  ],
  imports: [CommonModule, FormsModule,ReactiveFormsModule],
  exports: [
    DropdownDirective,
    CommonModule,
    ReactiveFormsModule,
    FormsModule

  ],

})
export class SharedModule {}
