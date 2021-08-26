import {Injectable} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Observable} from "rxjs";
import {Product} from "../shared/product.model";
import {Order} from "../shared/order.model";
import {User} from "../shared/user.model";

@Injectable({
  providedIn: 'root'
})
export class OrdersService {
  private ordersUrl = 'http://localhost:8080/orders/';
  constructor(private http: HttpClient) {
  }


  saveOrder(order: any) {
    return this.http.post(this.ordersUrl, order);
  }
  getOrdersByUser(user: User): Observable<Order[]>{
    return this.http.get<Order[]>(this.ordersUrl + 'findByUser');
  }


}
