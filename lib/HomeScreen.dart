import 'package:flutter/material.dart';
import 'package:qoutesapp/Pages/DashBord.dart';

import 'Pages/Classics.dart';
import 'Pages/Explore.dart';

import 'Pages/HomePage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              HomePage(),
              Explore(),
              Classics(),
              DashBoard(),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: <Widget>[
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text("Home",
                      style: TextStyle(fontSize: 12.0),),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.satellite),
                    Text("Explore",
                      style: TextStyle(fontSize: 12.0),),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.crop_original),
                    Text(
                      "Classics",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.dashboard),
                    Text("Dash"
                    ,
                      style: TextStyle(fontSize: 12.0),),
                  ],
                ),
              ),
            ],
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.redAccent,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
