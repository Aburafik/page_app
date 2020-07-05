import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                    Navigator.pop(context);
                  }),
                  IconButton(icon: Icon(Icons.favorite,color: Colors.red,), onPressed: () {}),
                ],
              ),
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/p.jpg'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Pear Sala',
                    style: TextStyle(fontSize: 30),
                  ),
                  SelectRange()
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  'prep time:5-8 min',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Details',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                'This pear salad is mixed greens with fresh sliced pears,'
                'pormegranate seeds,blue chees and candisd pecans,'
                'all tossed in homemade in a balsamic dressing.'
                'A fresh and colurful salad option that pairs perfectly with chicken,'
                'fish and pork ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w900),
              ),

              SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Total price',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Text('Ghc10.0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  ],
                ),
                RaisedButton(
                  shape: StadiumBorder(),
                  color: Colors.black,
                  onPressed: (){},child: Row(children: <Widget>[
                  Icon(Icons.shopping_cart,color: Colors.green,),
                  Text('Place order',style: TextStyle(color: Colors.white),)
                ],),)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}

class SelectRange extends StatefulWidget {

  @override
  _SelectRangeState createState() => _SelectRangeState();
}

class _SelectRangeState extends State<SelectRange> {
  int selectedNumber=0;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      shape: StadiumBorder(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.add),
            onPressed: (){
            setState(() {
              selectedNumber--;
            });
            },),
          Text(selectedNumber.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
          IconButton(icon: Icon(Icons.add),
            onPressed: (){
            setState(() {
              selectedNumber++;
            });
            },),
        ],
      ),
    );
  }
}
