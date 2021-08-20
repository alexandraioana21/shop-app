export class Product {
  public id:number;
    public name:string;
    public description: string;
    public imageUrl: string;
    public price: number;

  constructor(id: number,name: string, desc: string, imagePath: string, price:number) {
    this.id = id;
    this.name = name;
    this.description = desc;
    this.imageUrl = imagePath;
    this.price = price;
  }


}
