import {Injectable} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Observable} from "rxjs";
import {Product} from "../products/product.model";
import {Order} from "./order.model";
import {User} from "../auth/user.model";
import {AuthService} from "../auth/auth.service";

@Injectable({
  providedIn: 'root'
})
export class OrdersService {
  private ordersUrl = 'http://localhost:8080/orders/';
  constructor(private http: HttpClient) {
  }


  placeOrder(order: Order): Observable<any> {
    return this.http.post<Order>(this.ordersUrl + 'save/', order);
  }
  getOrdersByUser(id: number): Observable<Order[]>{
    return this.http.get<Order[]>(this.ordersUrl + 'findByUser/'+id);
  }


}
