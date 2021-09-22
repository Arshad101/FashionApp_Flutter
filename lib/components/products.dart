import 'package:flutter/material.dart';
import 'package:untitled/pages/ProductDetails.dart';
class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazers",
      "picture":"images/products/blazer1.jpeg",
      "old_price":120,
      "price": 85,

    },
    {
      "name": "Red Dress",
      "picture":"images/products/dress1.jpeg",
      "old_price":520,
      "price": 350,

    },
    {
      "name": "Hill",
      "picture":"images/products/hills1.jpeg",
      "old_price":120,
      "price": 85,

    },
    {
      "name": "Hill",
      "picture":"images/products/hills2.jpeg",
      "old_price":520,
      "price": 350,

    },
    {
      "name": "trouser",
      "picture":"images/products/pants1.jpg",
      "old_price":120,
      "price": 85,

    },
    {
      "name": "Pant",
      "picture":"images/products/pants2.jpeg",
      "old_price":520,
      "price": 350,

    },
    {
      "name": "Skirt",
      "picture":"images/products/skt1.jpeg",
      "old_price":120,
      "price": 85,

    },
    {
      "name": "Skirt",
      "picture":"images/products/skt2.jpeg",
      "old_price":520,
      "price": 350,

    },
    {
      "name": "Shoes",
      "picture":"images/products/shoe1.jpg",
      "old_price":120,
      "price": 85,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_oldprice: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
          );
    });
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Hero(tag: prod_name, child: Material(
        child: InkWell(onTap: ()=> Navigator.of(context).push(
            new MaterialPageRoute(builder: (context) => new ProductDetails(
              //here we are passing the values of cart to product details page
              product_detail_name: prod_name,
              product_detail_new_price: prod_price,
              product_detail_old_price: prod_oldprice,
              product_detail_picture: prod_picture,
            ))),
          child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(children: [
                  Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  ),

                  new Text("\₹$prod_oldprice", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],),

              ),
              child: Image.asset(prod_picture,
            fit: BoxFit.cover,)),

        ),
      )),
    );
  }
}