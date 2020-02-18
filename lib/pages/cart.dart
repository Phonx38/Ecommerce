import 'package:flutter/material.dart';

import 'package:ecom_app/components/cart_product.dart';

class ShopCart extends StatefulWidget {
  @override
  _ShopCartState createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar : new AppBar(
        elevation:0.2,
        centerTitle: true,
        title: Text('Cart'),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color:Colors.white,),onPressed: (){}),
          
        ],
        
      ),

      body: new CartProd(),
      
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text('Total'),
                subtitle: Text('\$230'),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new MaterialButton(onPressed: (){},
                child: new Text('Check Out',style: TextStyle(color: Colors.white),),
                color: Colors.redAccent,),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}