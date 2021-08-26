import {Injectable} from "@angular/core";
import {Observable} from "rxjs";
import {HttpClient} from "@angular/common/http";
import {Order} from "../shared/order.model";


@Injectable({
  providedIn: 'root'
})
export class CheckoutService{

  private orderUrl = 'http://localhost:8080/orders/save';
  constructor(private httpClient: HttpClient) { }

  placeOrder(order: Order): Observable<any> {
    return this.httpClient.post<Order>(this.orderUrl, order);
  }

}
