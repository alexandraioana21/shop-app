import {Injectable} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Observable, Subject, throwError} from "rxjs";
import {Product} from "../shared/product.model";
import {map, tap} from "rxjs/operators";

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  private products: Product[] = [];
  private product: Product;
  productsChanged = new Subject<Product[]>();
  private baseUrl = 'http://localhost:8080/products/';
  constructor(private http:HttpClient) {
  }

  getProductsList() : Observable<Product[]> {
    return this.http.get<Product[]>(this.baseUrl);
  }

  getProduct(theProductId: number):Observable<Product> {
    const productUrl = `${this.baseUrl}${theProductId}`;
    return this.http.get<Product>(productUrl);
  }

 deleteProduct(id: number)
 {
    return this.http.delete(this.baseUrl + 'delete/' + id);
  }

  update(id: number, params) {
    return this.http.put(`${(this.baseUrl)}update/${id}`, params);
  }

  saveNewProduct(product:Product){
    return this.http.post<Product>(this.baseUrl + 'save/',product);
  }

  getProductsByType(type: string): Observable<Product[]> {
    const typeUrl=`${this.baseUrl}findByType/${type}`;
    return this.http.get<Product[]>(typeUrl);
  }

  searchProducts(theKeyword: string): Observable<Product[]> {
    const searchUrl = `${this.baseUrl}findByName/${theKeyword}`;
    return this.http.get<Product[]>(searchUrl);
  }



}
