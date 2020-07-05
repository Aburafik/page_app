import 'package:flutter/material.dart';
import 'menu.dart';
import 'categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;
    TextStyle textStyle2 = Theme.of(context).textTheme.headline5;
    return Scaffold(
      body: Container(
        color: Colors.black54,
        child: Container(
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              border: Border.all(color: Colors.white70, width: 5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Container(width: 300),
                  Icon(
                    Icons.search, size: 30),
                  SizedBox(width: 15),
                  Icon(Icons.notifications_active),
                ],
              ),
              Text(
                'What\s New ', style: textStyle),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'From The Kitchen', style: textStyle2.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  Categories(
                    categoryName: 'Salad', color: Colors.lightGreenAccent, image: 'p.jpg'
                  ),
                  Categories(
                    categoryName: 'Soups', color: Colors.grey, image: 'p6.jpg'
                  ),
                  Categories(
                    categoryName: 'Burger', color: Colors.grey, image: 'p7.jpg'
                  )
                ],
              ),
              Menu(
                name: 'Chicken',
                other: '&Avocado',
                description: 'Easily gluten free',
                price: 10.99,
                image: 'p.jpg',
              ),
              Menu(
                name: 'Fresh salad',
                other: 'with Feta',
                description: 'Easily gluten free',
                price: 10.99,
                image: 'p6.jpg',
              ),
              Menu(
                name: 'Vegetarian',
                other: 'Chopped Salad',
                description: 'gluten free',
                price: 10.99,
                image: 'p7.jpg',
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                  child: Card(
                elevation: 5,
                shape: StadiumBorder(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.fastfood,
                    ),
                    Icon(
                      Icons.shopping_cart, color: Colors.grey
                    ),
                    Icon(
                      Icons.favorite_border, color: Colors.grey
                    ),
                    Icon(
                      Icons.local_offer, color: Colors.grey
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}




