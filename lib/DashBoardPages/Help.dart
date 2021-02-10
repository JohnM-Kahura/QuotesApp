import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Help"),
        backgroundColor: Colors.red,
        // centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Text("Chat"),),
    );
  }
}
