import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
// My own imports
import 'package:untitled/components/horizontal_listview.dart';
import 'package:untitled/components/products.dart';
import 'package:untitled/pages/Cart.dart';
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    //slider view
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
      //  animationCurve: Curves.fastOutSlowIn,
      //  animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.blue,
        indicatorBgPadding: 0,
        dotBgColor:Colors.transparent,
      ),
    );
    //slider view
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.cyan,
        title: Text('PhoenixTrendz',style: TextStyle(color: Colors.black,  fontWeight: FontWeight.bold),),

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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //     header
            new UserAccountsDrawerHeader(
                accountName: Text('Zafer'),
                accountEmail: Text('domzafer@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),


                ),
            InkWell(
              onTap: (){},
              child: ListTile(
              title: Text('HomePage'),
              leading: Icon(Icons.home),
            ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red),

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),
      ]
        ),

      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding:  const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
          //Horizontal list view
          HorizontalList(),
          //padding widget
          new Padding(padding:  const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),
          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),




    );
  }
}

