import {Injectable} from "@angular/core";
import {Observable} from "rxjs";
import {HttpClient} from "@angular/common/http";
import {Order} from "../order.model";
import {OrdersService} from "../orders.service";


@Injectable({
  providedIn: 'root'
})
export class CheckoutService{

  constructor(private httpClient: HttpClient,) { }



}
