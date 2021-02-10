import 'package:flutter/material.dart';
import 'package:qoutesapp/Data/SampleData.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int count = 0;
  Color color = Colors.white.withOpacity(0.6);
  changeColor() {
    setState(() {
      count += 1;
      if (count == 0) {
        color = Colors.white;
      } else {
        color = Colors.red;
        if (count == 1) {
          setState(() {
            count = 0;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9EB),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Explore"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      /*
      I will add a ListView builder later  on.
      This will be after I get This data from an API
       */
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(
              top: 5.0,
              left: 2.0,
              right: 2.0,
            ),
            height: 240.0,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.brown,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: <Widget>[
                //Category title.....
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5.0, left: 10.0, top: 1.0),
                      child: Text(
                        //This widget will contain the Title of the category

                        categoryTitle[index],
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                //stack with the Image and the quotes and the author
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          image: AssetImage(
                            imageUrl[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.9),
                            Colors.black.withOpacity(0.9),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pages[index],
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              left: 10.0,
                            ),
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 30.0, top: 10.0),
                                child: Text(
                                  "by Bill Gates",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: ()=>changeColor(),
                                
                                child: IconButton(
                                  icon: Icon(Icons.favorite),
                                  iconSize: 35,
                                  color: color,
                                  onPressed: (){} ,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
