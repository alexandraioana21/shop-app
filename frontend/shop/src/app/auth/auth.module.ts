import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ReactiveFormsModule} from '@angular/forms';
import { RouterModule } from '@angular/router';
import { AuthComponent } from './auth.component';
import {LoginComponent} from "./login/login.component";
import {AuthRoutingModule} from "./auth-routing.module";
import {SharedModule} from "../shared/shared.module";
import {SignupComponent} from "./signup/signup.component";
import {MatProgressSpinnerModule} from "@angular/material/progress-spinner";
import {UserProfileComponent} from "./user-profile/user-profile.component";


@NgModule({
  declarations: [
    AuthComponent,
    LoginComponent,
    SignupComponent,
    UserProfileComponent],
  imports: [
    RouterModule,
    CommonModule,
    ReactiveFormsModule,
    AuthRoutingModule,
    SharedModule,
    MatProgressSpinnerModule
  ]
})
export class AuthModule {}
