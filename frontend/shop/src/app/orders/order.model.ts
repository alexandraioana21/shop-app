import {User} from "../auth/user.model";
import {OrderElement} from "./order-element.model";


export class Order{
  id:number;
  user:User;
  elements: OrderElement[];
  date: string;
  totalPrice: number;
  totalQuantity:number;

}
