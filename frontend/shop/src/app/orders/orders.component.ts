import { Component, OnInit } from '@angular/core';
import {Order} from "./order.model";
import {AuthService} from "../auth/auth.service";
import {OrdersService} from "./orders.service";
import {User} from "../auth/user.model";

@Component({
  selector: 'app-orders',
  templateUrl: './orders.component.html',
  styleUrls: ['./orders.component.css']
})
export class OrdersComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {



  }


}
