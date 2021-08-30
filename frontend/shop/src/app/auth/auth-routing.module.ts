import {RouterModule, Routes} from "@angular/router";
import {LoginComponent} from "./login/login.component";
import {SignupComponent} from "./signup/signup.component";
import {NgModule} from "@angular/core";
import {AuthComponent} from "./auth.component";
import {UserProfileComponent} from "./user-profile/user-profile.component";

const authRoutes: Routes = [

  {
    path: '',
    component: AuthComponent,
    children:[
      {path:'login', component:LoginComponent},
      {path:'signup', component:SignupComponent},
      {path:'my-account', component:UserProfileComponent},
    ]
  }
  ];

@NgModule({
  imports: [RouterModule.forChild(authRoutes)],
  exports: [RouterModule]
})
export class AuthRoutingModule { }
