import 'package:flutter/material.dart';

import 'order_page.dart';
const ItemTextStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w900);

class Menu extends StatelessWidget {
  final String name;
  final String other;
  final String description;
  final double price;
  final String image;

  Menu({this.image, this.name, this.other, this.description, this.price});

  @override
  Widget build(BuildContext context) {
    TextStyle descriptionTextStyle = Theme.of(context).textTheme.headline6;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OrderPage()));
      },
      child: Card(

          shadowColor: Colors.white70,
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('images/$image'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(name, style: ItemTextStyle),
                        Text(
                          other,
                          style: ItemTextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            description,
                            style: descriptionTextStyle.copyWith(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          price.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            width: 30,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Center(
                                child: Text(
                                  'Top',
                                  style: TextStyle(color: Colors.white),
                                ))),
                        Container(
                          height: 70,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}