import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  
  const ProductDetails({ 
    this.product_detail_name, this.product_detail_new_price, 
    this.product_detail_old_price, this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.cyan,
          title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));
            },

          child:Text('PhoenixTrendz')),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
          ),




          ],
        ),
            body: new ListView(
        children:<Widget>[
         new Container(
        height: 300.0,
        child: GridTile(
          child: Container(
            color: Colors.white,
            child: Image.asset(widget.product_detail_picture),
          ),
        footer: new Container(
          color: Colors.white60,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ListTile(
                leading: new Text("${widget.product_detail_name}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("\₹${widget.product_detail_old_price}", style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                    ),
                    Expanded(
                        child: new Text("\₹${widget.product_detail_new_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17.0 ))
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
        ),
    ),
          //=====================the first buttons=====================
          Row(
            children: <Widget>[
        //=======================the size button==================
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose the size"),
                      actions: [
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Close"),)
                    ],
                        );
                  });
                },
                  color:Colors.white,
                  textColor: Colors.blueGrey,
                  elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: new Text("Size"),
                    ),
                    Expanded(child: new Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),),
              ),
              //=======================the color button==================
              Expanded(
                child: MaterialButton(onPressed: (){

                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose the Color"),
                            actions: [
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),)
                            ],
                          );
                        });

                },
                  color:Colors.white,
                  textColor: Colors.blueGrey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Color"),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),),
              ),
              //=======================the QTY button==================
              Expanded(
                child: MaterialButton(onPressed: (){

                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Qty"),
                            content: new Text("Choose the Qty"),
                            actions: [
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),)
                            ],
                          );
                        });

                },
                  color:Colors.white,
                  textColor: Colors.blueGrey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Qty"),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),),
              ),
            ]
          ),
          Row(
              children: <Widget>[
          //=======================the BUY button==================
          Expanded(
          child: MaterialButton(onPressed: (){},
          color:Colors.red,
          textColor: Colors.white,
          elevation: 0.2,
          child: new Text("Buy Now"),
    ),
          ),
                new IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,), onPressed: (){}),
                new IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,), onPressed: (){}),

              ]
    ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text(" Product details as per the quality "),
          ),
          Divider(),
         new Row(
           children: [
             Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
             child: new Text("Product name", style: TextStyle(color: Colors.blueGrey),),),
             Padding(padding: EdgeInsets.all(5.0),
               child: new Text(widget.product_detail_name),
             )
           ],
         ),
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("Product Brand", style: TextStyle(color: Colors.blueGrey),),),
 //           Remember to create the product brand
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              ),
            ],
          ),
 //         Add the product condition
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.blueGrey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              )
            ],
          ),
        Divider(),
        Padding(padding:const EdgeInsets.all(8.0),
        child: Text("Similar Products"),),
//        SIMILAR PRODUCTS SECTION
          Container(
            height: 340.0,
            child:Similar_products(),
          )
      ],
            )
    );
  }
}
class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}
class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Similar_Single_prod({
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
