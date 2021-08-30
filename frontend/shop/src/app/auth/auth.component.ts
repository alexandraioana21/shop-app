import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, NgForm, Validators} from "@angular/forms";
import {Observable} from "rxjs";
import {AuthService} from "./auth.service";
import {ActivatedRoute, Router} from "@angular/router";
import {User} from "./user.model";

@Component({
  selector: 'app-auth',
  templateUrl: './auth.component.html',
  styleUrls: ['./auth.component.css']
})
export class AuthComponent  {


  constructor() { }


  }
