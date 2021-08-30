import { Component, OnInit } from '@angular/core';
import {AuthService} from "../auth.service";
import {User} from "../user.model";
import {UserData} from "../user-data.model";

@Component({
  selector: 'app-my-account',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {
currentUserData : UserData;
user:User = new User();
  constructor(private authService: AuthService) { }

  ngOnInit(): void {
    this.currentUserData = JSON.parse(localStorage.getItem('userData'))
    console.log(this.currentUserData.id);
    this.displayUser();
  }

  displayUser(){
    return this.authService.getUserById(this.currentUserData.id).subscribe(
      data => {
        this.user = data;
      }
    )
  }


}
