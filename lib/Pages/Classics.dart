import 'package:flutter/material.dart';
import 'package:qoutesapp/ClasssicsPages/BillGates.dart';
import 'package:qoutesapp/Data/SampleData.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Classics extends StatefulWidget {
  @override
  _ClassicsState createState() => _ClassicsState();
}

class _ClassicsState extends State<Classics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9EB),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Best of The Best"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 250,
            width: double.infinity,
          
            child: Carousel(
              boxFit: BoxFit.cover,
              images: [
               AssetImage("Assets/1.png"), 
               AssetImage("Assets/2.png"), 
               AssetImage("Assets/3.png"), 
               AssetImage("Assets/4.png"), 
               AssetImage("Assets/5.png"), 
               AssetImage("Assets/6.png"), 
               AssetImage("Assets/7.png"), 
               AssetImage("Assets/8.png"), 
              ],
              autoplayDuration: Duration(seconds: 20),
              
            ),
            
          ),
          Container(
            height: 380,
            // color: Colors.red,
            child: ListView.builder(
              itemCount: educationalQuotesAuthors.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(top: 2.0),
                  // height: 60,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black.withOpacity(0.3)),
                    ),
                  ),
                  child: InkWell(
                    onDoubleTap: () {},
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BillGates(),
                        ),
                      );
                    },
                    splashColor: Colors.red,
                    child: Container(
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 10.0, left: 2.0, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              educationalQuotesAuthors[index],
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
