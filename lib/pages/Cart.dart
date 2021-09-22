import 'package:flutter/material.dart';
//my import
import 'package:untitled/components/cart_product.dart';
class Cart extends StatefulWidget {
 // const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: new AppBar(
      elevation: 0.1,
      backgroundColor: Colors.indigoAccent,
      title: Text('Cart',style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),),

      actions: <Widget>[
        new IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        new IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\₹230"),
            )),
            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Check Out", style: TextStyle(color: Colors.white)),
                  color:Colors.indigoAccent),
              )
          ],
        ),
      ),
    );
  }

}
