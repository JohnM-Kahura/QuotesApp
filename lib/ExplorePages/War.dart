import 'package:flutter/material.dart';
import 'package:qoutesapp/Data/SampleData.dart';

class War extends StatefulWidget {
  @override
  _WarState createState() => _WarState();
}

class _WarState extends State<War> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("War"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: educationalQuotes.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.redAccent.withOpacity(0.8),
            // height: 100.0,
            margin: EdgeInsets.only(
              top: 2.0,
            ),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 7.0),
                  child: Text(
                    educationalQuotes[index],
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0, right: 10.0),
                      child: Text(
                        //fix the bug here can't figure out how to bring in the authors names from list in the  Sample
                        //data file....
                        "by Bill Gates",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
