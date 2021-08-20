import {Injectable} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Observable} from "rxjs";
import {Product} from "./product.model";

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  private baseUrl =  'http://localhost:8081/products/list';
  constructor(private httpClient:HttpClient) {
  }

  getProductsList() : Observable<Product[]> {
    return this.httpClient.get<Product[]>(this.baseUrl);
  }

}
