import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
        height: 60.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
          Category(
              image_caption: 'Shirt',
              image_location: 'images/cats/tshirt.png'),
          Category(
                image_caption: 'Dress',
                image_location: 'images/cats/dress.png'),
          Category(
                image_caption: 'Pants',
                image_location: 'images/cats/jeans.png'),
          Category(
                image_caption: 'Formal',
                image_location: 'images/cats/formal.png'),
          Category(
                image_caption: 'Informal',
                image_location: 'images/cats/informal.png'),
          Category(
                image_caption: 'Shoes',
                image_location: 'images/cats/shoe.png'),
          Category(
                image_caption: 'Accessories',
                image_location: 'images/cats/accessories.png'),
          ],
        )
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_caption,
    required this.image_location

  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(
            image_location,
            width: 75.0,
            height: 40.0,
        ),

        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption),
        )
      ),
    ),
    ),
    );
  }
}