import { Component, OnInit } from '@angular/core';
import {ProductService} from "../product.service";
import {Product} from "../product.model";
import {Router} from "@angular/router";


@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {
products: Product[];
  constructor(private productService: ProductService,
              private router: Router) { }

  ngOnInit(): void {
  }
  search(keyword:string) {

    this.router.navigateByUrl(`/search/${keyword}`).then(() => console.log(`value=${keyword}`));
  }

}
