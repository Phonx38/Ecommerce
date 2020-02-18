import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_loc: 'images/cats/tshirt.png',
            image_cap: 'T-Shirts',
          ),

          Category(
            image_loc: 'images/cats/jeans.png',
            image_cap: 'Jeans',
          ),

          Category(
            image_loc: 'images/cats/formal.png',
            image_cap: 'Formals',
          ),

          Category(
            image_loc: 'images/cats/informal.png',
            image_cap: 'Casuals',
          ),

          Category(
            image_loc: 'images/cats/dress.png',
            image_cap: 'Dress',
          ),

          Category(
            image_loc: 'images/cats/shoe.png',
            image_cap: 'Shoes',
          ),

          Category(
            image_loc: 'images/cats/accessories.png',
            image_cap: 'Accessories',
          ),


        ],
      ),
      
    );
  }
}

class Category extends StatelessWidget {
  final String image_loc;
  final String image_cap;

  Category({
    this.image_loc,
    this.image_cap,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child : Container(
        width: 80.0,
        child: ListTile(
          title: Image.asset(
            image_loc,
            width: 60.0,
            height: 40.0,
          ),
          subtitle: Container(
            
            alignment: Alignment.topCenter,
            child: Text(image_cap,style: TextStyle(color: Colors.grey),),
          ),
        ),
      ),
    ),
    );
  }
}