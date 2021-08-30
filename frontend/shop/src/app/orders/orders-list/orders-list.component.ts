import { Component, OnInit } from '@angular/core';
import {AuthService} from "../../auth/auth.service";
import {OrdersService} from "../orders.service";
import {Order} from "../order.model";
import {User} from "../../auth/user.model";
import {UserData} from "../../auth/user-data.model";
import {Observable} from "rxjs";

@Component({
  selector: 'app-orders-list',
  templateUrl: './orders-list.component.html',
  styleUrls: ['./orders-list.component.css']
})
export class OrdersListComponent implements OnInit {
  orders :Order[];
  private userData: UserData;
  user:User = new User();
  constructor(private authService:AuthService,
              private ordersService:OrdersService) { }

  ngOnInit(): void {

    this.getUserOrders();
  }
  getUserOrders (){
    this.userData = this.authService.getLoggedInUser();
    return this.ordersService.getOrdersByUser(this.userData.id).subscribe(
      data => {
        this.orders = data;
        console.log(this.orders);
      }
    );
  }


}
