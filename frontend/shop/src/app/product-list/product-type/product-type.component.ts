import { Component, OnInit } from '@angular/core';
import {ProductType} from "../../shared/product-type.enum";
import {ActivatedRoute, Route, Router} from "@angular/router";
import {ProductService} from "../product.service";
import {Product} from "../../shared/product.model";

@Component({
  selector: 'app-product-type',
  templateUrl: './product-type.component.html',
  styleUrls: ['./product-type.component.css']
})
export class ProductTypeComponent implements OnInit {
  products: Product[] = [];
  product: Product;
  constructor(private router: Router,
              private productService: ProductService,
              private route: ActivatedRoute) { }

  ngOnInit(): void {

  }
  public get productType(): typeof ProductType {
    return ProductType;
  }

}
