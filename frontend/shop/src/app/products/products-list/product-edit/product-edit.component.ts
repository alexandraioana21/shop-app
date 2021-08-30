import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormControl, FormGroup, Validators} from "@angular/forms";
import {ProductService} from "../../product.service";
import {ActivatedRoute, Params, Router} from "@angular/router";
import {Product} from "../../product.model";
import {first, take} from "rxjs/operators";
import {ShopValidators} from "../../../shared/validators/shop-validators";

@Component({
  selector: 'app-product-edit',
  templateUrl: './product-edit.component.html',
  styleUrls: ['./product-edit.component.css']
})
export class ProductEditComponent implements OnInit {
addMode = false;
id:number;
productForm:FormGroup;
submitted = false;
loading = false;
product: Product = new Product();

  constructor(private productService: ProductService,
              private route: ActivatedRoute,
              private router:Router,
              private formBuilder : FormBuilder) { }

  ngOnInit(): void {
    this.id = this.route.snapshot.params['id'];
    this.addMode = !this.id;

    this.productForm = this.formBuilder.group({
          'name': new FormControl('',[Validators.required,Validators.minLength(2),ShopValidators.notOnlyWhitespace]),
          'type': new FormControl('',[Validators.required,ShopValidators.notOnlyWhitespace]),
          'description': new FormControl('',[Validators.required,Validators.minLength(5),ShopValidators.notOnlyWhitespace]),
          'price': new FormControl('', [Validators.required,Validators.pattern('^[1-9]+[0-9]*$')]),
          'imageUrl': new FormControl('',[Validators.required,Validators.pattern('(https?:\\/\\/(?:www\\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\\.[^\\s]{2,}|www\\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\\.[^\\s]{2,}|https?:\\/\\/(?:www\\.|(?!www))[a-zA-Z0-9]+\\.[^\\s]{2,}|www\\.[a-zA-Z0-9]+\\.[^\\s]{2,})')]
  ),
        });


    if (!this.addMode) {
      this.productService.getProduct(this.id)
        .pipe(take(1))
        .subscribe(x => this.productForm.patchValue(x));
    }
  }
  get f() { return this.productForm.controls; }

  onSubmit() {
    this.submitted = true;
    if (this.productForm.invalid) {
      return;
    }
    this.loading = true;
    if (this.addMode) {
      this.createProduct();
    } else {
      this.updateProduct();
    }

  }
  private createProduct(){
    this.productService.saveNewProduct(this.productForm.value)
      .pipe(take(1))
      .subscribe({
        next: () => {
          this.router.navigate(['../'], { relativeTo: this.route });
        },
        error: error => {
          this.loading= false;
        }
      })
  }
  private updateProduct() {
    this.productService.update(this.id, this.productForm.value)
      .pipe(take(1))
      .subscribe({
        next: () => {
          this.router.navigate(['../../'], { relativeTo: this.route });
        },
        error: error => {
          this.loading = false;
      }})
  }

  onCancel() {
    this.router.navigate(['../'],{relativeTo:this.route})
  }

  get name() { return this.productForm.get('name');}
  get type() { return this.productForm.get('type');}
  get description() { return this.productForm.get('description');}
  get price() { return this.productForm.get('price');}
  get imgUrl() { return this.productForm.get('imageUrl');}

}
