import 'package:qoutesapp/HomePage/Wigets/QuoteContainer.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
Color color= Colors.white.withOpacity(0.6);
bool clicked=false;
changeColor(){
  setState(() {
    color=Colors.red;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9EB),
      // backgroundColor: Colors.black.withOpacity(0.6),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Quotes",
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          //Add the required stuff once I access the API
          //Add a backgroung Image.The most suitable one will
          //be the Image of the author of the quote
          GestureDetector(
            onTap: (){},
           
            child: quoteContainer("Assets/1.png"),
          ),
          quoteContainer("Assets/2.png"),
          quoteContainer("Assets/3.png"),
          quoteContainer("Assets/4.png"),
          quoteContainer("Assets/5.png"),
          quoteContainer("Assets/6.png"),
          quoteContainer("Assets/7.png"),
          quoteContainer("Assets/8.png"),
          quoteContainer("Assets/9.png"),
        ],
      ),
    );
  }
}
