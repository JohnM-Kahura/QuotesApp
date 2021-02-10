import 'package:flutter/material.dart';
import 'package:qoutesapp/Data/SampleData.dart';
import 'package:qoutesapp/Styles/Colors.dart';

Widget quoteContainer(String imageurl) {
  return Container(
    height: 200.0,
    margin: EdgeInsets.only(
      bottom: 0.0,
    ),
    child: Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: Image(
            width: double.infinity,
            image: AssetImage(imageurl),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.0),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.6),
              ],
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 8.0,
                top: 20.0,
                bottom: 10.0,
              ),
              child: Text(
                quote,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  // backgroundColor: Colors.red,
                ),
              ),
            ),
            Container(
              // color: Colors.brown,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "by Marcus Aurelius",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 33,
            // ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              // color: Colors.white,
              width: double.infinity,
              // height: 39,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite),
                    iconSize: 40,
                    color: color,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
