import 'package:flutter/material.dart';

void main() {
  //runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Live Test Module 6",
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget{

  /// Snack bar massage
  _mySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
              _mySnackBar("Cart is empty", context);
          }, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            minVerticalPadding: 10,
            leading: Icon(Icons.shopping_basket_rounded),
            title: Text(
                'Apples',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            onTap: () => print('Button is pressed'),
          ),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon(Icons.shopping_basket_rounded),
            title: Text(
              'Bananas',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            onTap: () => print('Button is pressed'),
          ),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon(Icons.shopping_basket_rounded),
            title: Text(
              'Bread',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            onTap: () => print('Button is pressed'),
          ),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon(Icons.shopping_basket_rounded),
            title: Text(
              'Milk',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            onTap: () => print('Button is pressed'),
          ),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon(Icons.shopping_basket_rounded),
            title: Text(
              'Eggs',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            onTap: () => print('Button is pressed'),
          ),
        ],
      )
    );
  }
}

