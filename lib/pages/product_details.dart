import 'package:flutter/material.dart';
import 'package:ecom_app/main.dart';
import 'homepage.dart';

import 'package:ecom_app/pages/cart.dart';

class Product_details extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_pic;
  final prod_detail_old_price;
  final prod_detail_new_price;

  Product_details({
    this.prod_detail_name,
    this.prod_detail_pic,
    this.prod_detail_old_price,
    this.prod_detail_new_price,
  });

  @override
  _Product_detailsState createState() => _Product_detailsState();
}

class _Product_detailsState extends State<Product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar : new AppBar(
        elevation:0.3,
        centerTitle: true,
        title: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>new Homepage()));},
          child: Text('Fashion')),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color:Colors.white,),onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color:Colors.white,),onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> new ShopCart()));
          })
        ],
        
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_pic),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.prod_detail_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child:new Text("\$${widget.prod_detail_new_price}",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
                        ),
                      Expanded(
                        child:new Text("\$${widget.prod_detail_old_price}",style: TextStyle(color: Colors.black54,decoration: TextDecoration.lineThrough,fontWeight: FontWeight.bold),)
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                   onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text('Size'),
                        content: new Text('Choose a size'),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text('Done'),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                        Expanded(child: new Text('Size'),),
                        Expanded(child: Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ) ,
                ),

                Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text('Size'),
                        content: new Text('Choose a Color'),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text('Done'),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                        Expanded(child: new Text('Color'),),
                        Expanded(child: Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ) ,
                ),

                Expanded(
                child: MaterialButton(
                   onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text('Size'),
                        content: new Text('Choose Qty'),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text('Done'),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                        Expanded(child: new Text('Qty'),),
                        Expanded(child: Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ) ,
                )
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text('Buy Now'),
                ) ,
                ),
                new IconButton(icon:  Icon(Icons.add_shopping_cart,color: Colors.red,),onPressed: (){},),
                new IconButton(icon:  Icon(Icons.favorite_border,color: Colors.red,),onPressed: (){},),
            ],
          ),
          Divider(),

          new ListTile(
            
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 5.0, 5.0, 5.0),
              child: new Text('Product details',style: TextStyle(color: Colors.grey),),
            ),
            subtitle: new Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',style: TextStyle(color: Colors.black),),
          ),
          Divider(),

          new Row(

          children: <Widget>[
            Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child:new Text('Product Name',style: TextStyle(color: Colors.grey),),),
            Padding(padding: const EdgeInsets.all(5.0),
            child: new Text(widget.prod_detail_name),)
          ],
          ),

          Divider(),

          new Row(

          children: <Widget>[
            Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child:new Text('Product brand',style: TextStyle(color: Colors.grey),),),
            Padding(padding: const EdgeInsets.all(5.0),
            child: new Text('Nike'),)
          ],
          ),

          Divider(),

          new Row(

          children: <Widget>[
            Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child:new Text('Product condition',style: TextStyle(color: Colors.grey),),),
            Padding(padding: const EdgeInsets.all(5.0),
            child: new Text('New'),)
          ],
          ),
        Divider(),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text('Similar Products'),
        ),

        Container(
          
          height: 400.0,
          child: Similar_prod() ,
        )
        ],
      ),
    );
  }
}

class Similar_prod extends StatefulWidget {
  @override
  _Similar_prodState createState() => _Similar_prodState();
}

class _Similar_prodState extends State<Similar_prod> {
    var productList = [
    {
      'name' : 'Blazer',
      'pic'  :  'images/products/blazer1.jpeg',
      'old_price' : 120,
      'new_price' : 100,    
    },

    {
      'name' : 'Red Dress',
      'pic'  :  'images/products/dress1.jpeg',
      'old_price' : 120,
      'new_price' : 100,    
    },

    {
      'name' : 'skirt',
      'pic'  :  'images/products/skt1.jpeg',
      'old_price' : 300,
      'new_price' : 100,    
    },

    {
      'name' : ' Black Blazer',
      'pic'  :  'images/products/blazer2.jpeg',
      'old_price' : 1200,
      'new_price' : 1000,    
    },

    {
      'name' : 'heels',
      'pic'  :  'images/products/hills1.jpeg',
      'old_price' : 120,
      'new_price' : 100,    
    },

    {
      'name' : 'heels Red',
      'pic'  :  'images/products/hills2.jpeg',
      'old_price' : 120,
      'new_price' : 100,    
    },

    {
      'name' : 'Jeans',
      'pic'  :  'images/products/pants2.jpeg',
      'old_price' : 120,
      'new_price' : 100,    
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder:(BuildContext context,int index) {
        return Similar_Single_Product(
          prod_name: productList[index]['name'],
          prod_pic: productList[index]['pic'],
          prod_old_price: productList[index]['old_price'],
          prod_new_price: productList[index]['new_price'],
        );
      } ,
    );
  }
}




class Similar_Single_Product extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_old_price;
  final prod_new_price;

  Similar_Single_Product({
    this.prod_name,
    this.prod_pic,
    this.prod_old_price,
    this.prod_new_price
    }
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => 
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=> 
                new Product_details(
                    prod_detail_name: prod_name,
                    prod_detail_pic: prod_pic,
                    prod_detail_new_price: prod_new_price,
                    prod_detail_old_price: prod_old_price,
                ))
              ),
            child: GridTile(
              footer: Container(
                
                color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),
                    new Text("\$${prod_new_price}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("\$${prod_old_price}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,decoration: TextDecoration.lineThrough)),
                    )
                  ],
                ),

              ),
              child: Image.asset(
                prod_pic,
                fit: BoxFit.cover,
                ),
            ),

          ),
        ),
      ),
    );
  }
}