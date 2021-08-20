import {Product} from "../product.model";
import {Component} from "@angular/core";


@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.css']
})
export class ProductDetailsComponent {
  product: Product = new Product(1,'apple','bbb','ghjk',8);
}
