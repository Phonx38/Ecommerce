import 'package:flutter/material.dart';

import 'package:ecom_app/pages/product_details.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Single_Product(
            prod_name: productList[index]['name'],
            prod_pic: productList[index]['pic'],
            prod_old_price: productList[index]['old_price'],
            prod_new_price: productList[index]['new_price'],
          ),
        );
      } ,
    );
  }
}


class Single_Product extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_old_price;
  final prod_new_price;

  Single_Product({
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