import 'package:flutter/material.dart';
class Categories extends StatelessWidget {
  final String categoryName;
  final Color color;
  final String image;

  Categories({this.categoryName, this.color, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 29,bottom: 10),
      child: RaisedButton(
        shape: StadiumBorder(),
        color: color,
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/$image'),
              radius: 9,
            ),
            Text(
              categoryName,
              style: TextStyle(color: Colors.black, fontSize: 15),
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}