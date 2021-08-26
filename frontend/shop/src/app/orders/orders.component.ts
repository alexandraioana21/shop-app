import { Component, OnInit } from '@angular/core';
import {Order} from "../shared/order.model";

@Component({
  selector: 'app-orders',
  templateUrl: './orders.component.html',
  styleUrls: ['./orders.component.css']
})
export class OrdersComponent implements OnInit {
orders :Order[];
  constructor() { }

  ngOnInit(): void {
  }

}
