import {Product} from "./product.model";
import {CartItem} from "./cart-item.model";
export class OrderElement {
  product: Product;
  quantity: number;


  constructor(cartItem: CartItem) {
    this.product.imageUrl = cartItem.imageUrl;
    this.product.price = cartItem.price;
    this.product.id = cartItem.id;
    this.quantity= cartItem.quantity;
  }
}
