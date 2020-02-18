import 'package:flutter/material.dart';


class CartProd extends StatefulWidget {
  @override
  _CartProdState createState() => _CartProdState();
}

class _CartProdState extends State<CartProd> {
  var prod_on_cart = 
  [
    {
      'name' : 'Blazer',
      'pic'  :  'images/products/blazer1.jpeg',
      'new_price' : 100,   
      "size" :"M",
      "color" : " Red",
      "quantity" : 1,

    },

    {
      'name' : 'Red Dress',
      'pic'  :  'images/products/dress1.jpeg',     
      'new_price' : 100,  
      "size" :"M",
      "color" : " Red",
      "quantity" : 1,  
    },

    {
      'name' : 'skirt',
      'pic'  :  'images/products/skt1.jpeg',
      'new_price' : 100,  
      "size" :"M",
      "color" : " Red",
      "quantity" : 1,  
    },

    
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: prod_on_cart.length,
      itemBuilder: (context,index){
        return SingleCartProd(
          cart_prod_name :prod_on_cart[index]['name'],
          cart_prod_pic :prod_on_cart[index]['pic'],
          cart_prod_new_price :prod_on_cart[index]['new_price'],
          cart_prod_size :prod_on_cart[index]['size'],
          cart_prod_color :prod_on_cart[index]['color'],
          cart_prod_qty :prod_on_cart[index]['quantity'],
        );
      },
    );
  }
}

class SingleCartProd extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pic;
  final cart_prod_new_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  SingleCartProd({
    this.cart_prod_name,
    this.cart_prod_pic,
    this.cart_prod_new_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
    });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_pic,width: 80.0,height: 80.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: new Text('Size:'),
               ),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: new Text(cart_prod_size,style: TextStyle(color: Colors.redAccent),),
               ),
               new Padding(
                 padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                 child: new Text('Color:')
               ),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: new Text(cart_prod_color,style: TextStyle(color: Colors.redAccent),),
               ),
               
               
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_new_price}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent,fontSize:  17.0,),)
            )
          ],
        ),

        trailing: new Column(
          children: <Widget>[
            // new IconButton(icon: Icon(Icons.add),onPressed: (){},),
            new Text('$cart_prod_qty'),
            // new IconButton(icon: Icon(Icons.remove),onPressed: (){},),
          ],
        ),
        ),
      );
      
    
  }
}