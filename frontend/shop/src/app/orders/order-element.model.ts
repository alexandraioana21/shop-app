
import {CartItem} from "../cart-details/cart-item.model";
import {Product} from "../products/product.model";
export class OrderElement {
  product = new Product();
  quantity: number;

  constructor(cartItem: CartItem) {
    this.product.id = cartItem.id;
    this.product.name = cartItem.name;
    this.product.imageUrl= cartItem.imageUrl;
    this.quantity = cartItem.quantity;
    this.product.price= cartItem.price;

  }
}
