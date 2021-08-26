import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from "@angular/forms";
import {AuthService} from "../auth.service";
import {Observable} from "rxjs";
import {User} from "../../shared/user.model";
import {Router} from "@angular/router";
import {first} from "rxjs/operators";

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {
  signupForm!: FormGroup;
  loading = false;
  submitted = false;
  constructor(private formBuilder: FormBuilder,
              private authService:AuthService,
              private router:Router) { }

  ngOnInit(): void {
    this.signupForm = this.formBuilder.group({
      firstname:['',Validators.required],
      lastname:['',Validators.required],
      username: ['', Validators.required],
      password: ['', Validators.required]
    });
  }
  get f() { return this.signupForm.controls;}

  onSubmit() {
    this.submitted=true;
    if (!this.signupForm.valid) {
      return;
    }
    this.loading= true;
    this.authService.signup(this.signupForm.value)
      .pipe(first())
      .subscribe( data => {
      this.router.navigate(['/products']);
      },
      error => {
        this.loading= false;
      })
  }


}
