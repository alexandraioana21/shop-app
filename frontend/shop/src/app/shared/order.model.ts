import {User} from "./user.model";
import {OrderElement} from "./order-element.model";

export class Order{
  id: number;
  user: User;
  orderElements: OrderElement[];
  date: number;
  totalPrice: number;

}
