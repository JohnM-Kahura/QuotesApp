import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Favourites",
          style: TextStyle(letterSpacing: 1.5),
        ),
      ),
      body:Center(child: Text("No Favourites Added Yet"),),
    );
  }
}
