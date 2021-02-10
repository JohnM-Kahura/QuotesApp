import 'package:flutter/material.dart';
import 'package:qoutesapp/DashBoardPages/Favourites.dart';
import 'package:qoutesapp/DashBoardPages/Help.dart';
import 'package:qoutesapp/DashBoardPages/Settings.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("DashBoard"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.red.withOpacity(0.2),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(top: 50),
                color: Colors.blue,
                height: 200,
                width: double.infinity,
                child: Text(
                  "This  will contain the logo ",
                ),
              ),
              GestureDetector(
                
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 8, bottom: 5),
                        child: Icon(
                          Icons.home,
                          size: 35.0,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, top: 10, bottom: 10.0),
                        child: Text(
                          "Home",
                          style: TextStyle(fontSize: 20.0,letterSpacing: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Favourites(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 8, bottom: 5),
                        child: Icon(
                          Icons.favorite,
                          size: 35.0,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, top: 10, bottom: 10.0),
                        child: Text(
                          "Favourites",
                          style: TextStyle(fontSize: 20.0,letterSpacing: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 8, bottom: 5),
                        child: Icon(
                          Icons.settings,
                          size: 30.0,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, top: 10, bottom: 15.0),
                        child: Text(
                          "Settings",
                          style: TextStyle(fontSize: 20.0,letterSpacing: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 8, bottom: 5),
                        child: Icon(
                          Icons.help,
                          size: 30.0,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, top: 10, bottom: 10.0),
                        child: Text(
                          "Help",
                          style: TextStyle(fontSize: 20.0,letterSpacing: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Nothing Yet",
          style: TextStyle(),
        ),
      ),
    );
  }
}
