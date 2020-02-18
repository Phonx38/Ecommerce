import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


import 'package:ecom_app/components/horizontal_listView.dart';
import 'package:ecom_app/components/Products.dart';

import 'package:ecom_app/pages/cart.dart';



class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/shp1.jpg'),
        AssetImage('images/shp2.jpg'),
        AssetImage('images/shp3.jpg'),
        AssetImage('images/shp4.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 5.0,
      dotBgColor: Colors.transparent,
      dotIncreasedColor: Color(0xFFFF335C),
      showIndicator: true,
    ),
  );
  
    return Scaffold(
      appBar : new AppBar(
        elevation:0.2,
        centerTitle: true,
        title: Text('Fashion'),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color:Colors.white,),onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color:Colors.white,),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new ShopCart()));
          })
        ],
        
      ),
      drawer: new Drawer(
        child :new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text("Ashu"),
              accountEmail: Text('ashu@gmail.com'),

            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color:Colors.white),
              ),
              ),  
              decoration: new BoxDecoration(
                color: Colors.redAccent,
              ),
            ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Homepage') ,
                  leading : Icon(Icons.home,color: Colors.redAccent,),
                ),
            ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account') ,
                  leading : Icon(Icons.person,color: Colors.redAccent,),
                ),
            ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Orders') ,
                  leading : Icon(Icons.shopping_basket,color: Colors.redAccent,),
                ),
            ),

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new ShopCart()));
                },
                child: ListTile(
                  title: Text('Shopping Cart') ,
                  leading : Icon(Icons.shopping_cart,color: Colors.redAccent,),
                ),
            ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favourites') ,
                  leading : Icon(Icons.favorite,color: Colors.redAccent,),
                ),
            ),

            Divider(),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings') ,
                  leading : Icon(Icons.settings,color: Colors.lightBlue,),
                ),
            ),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About') ,
                  leading : Icon(Icons.help,color: Colors.lightBlue,),
                ),
            ),

          ],
          )
      ),
//body


      body : new Column(
        children: <Widget>[
          image_carousel,

          new Padding(padding: const EdgeInsets.all(8.0),
          child: Container(alignment: Alignment.centerLeft,child: new Text('Categories', style: TextStyle(fontWeight: FontWeight.bold),)),
          ),

          HorizontalListView(),

          new Padding(padding: const EdgeInsets.all(8.0),
          child: Container(alignment: Alignment.centerLeft,child: new Text('Recents', style: TextStyle(fontWeight: FontWeight.bold),)),
          ),

          Flexible(
            
            child:  Products(),
            )
        ],
      )
    );
  }
}