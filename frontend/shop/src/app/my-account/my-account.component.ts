import { Component, OnInit } from '@angular/core';
import {AuthService} from "../auth/auth.service";
import {User} from "../shared/user.model";
import {BehaviorSubject} from "rxjs";
import {UserSave} from "../shared/user-save.model";

@Component({
  selector: 'app-my-account',
  templateUrl: './my-account.component.html',
  styleUrls: ['./my-account.component.css']
})
export class MyAccountComponent implements OnInit {
currentUser= new UserSave();
  constructor(private authService: AuthService) { }

  ngOnInit(): void {
    this.currentUser = JSON.parse(localStorage.getItem('userData'))
  }



}
