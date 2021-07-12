import 'package:flutter/material.dart';
//import 'package:unicode/unicode.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import 'package:http/http.dart' as http;
//import 'dart:convert';

// void main() => runApp(MyApp(
//     //     initialRoute: '/', routes: {
//     //   '/': (context) => MyApp(),
//     //   '/sign': (context) => Auththen(),
//     // }
//     ));

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSC Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
// TODO: implement createState
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.grey[100],
          Colors.grey[100],
        ])),
        child: Container(
          child: Stack(children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //SizedBox(height: 80,),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                                child: GestureDetector(
                                  onTap: () {
                                    _navigateToNextScreen(context);
                                  },
                              child: InkWell(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                    "images/man.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                                )
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 30, bottom: 40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Kehinde Obey',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        // Text(
                        //   'Recipe app with Firebase',
                        //   style: TextStyle(color: Colors.black),
                        // ),

                      ],

                    ),
                  ),
                  // padding
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 70.0, left: 15,right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: ListView(
                          padding: EdgeInsets.only(
                              top: 90, left: 30, right: 30, bottom: 30),
                          children: <Widget>[
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "images/cake.png",
                                      width: 70,
                                      height: 70,
                                    ),
                                    Spacer(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Red Castle Cake',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '24 recipes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w100,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '>',
                                      style: TextStyle(fontSize: 30,color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  children: [
                                    Image.asset(
                                      "images/pizza.png",
                                      width: 70,
                                      height: 70,
                                    ),
                                    Spacer(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Cheese pizza',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '17 recipes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w100,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '>',
                                      style: TextStyle(fontSize: 30,color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  children: [
                                    Image.asset(
                                      "images/donut.png",
                                      width: 70,
                                      height: 70,
                                    ),
                                    Spacer(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Donut Cookies',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '24 recipes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w100,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '>',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w200,color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(100.0),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle),
                                )
                              ],
                            )
                          ]),
                    ),
                  ))
                ]),
            Positioned(
              top: 180,
              left: 50,
              right: 50,
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Discover',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 7),
                            Container(
                                width: 190,
                                height: 30,
                                child: Text('Today\'s Top Scored Recipe',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))),
                            SizedBox(height: 10),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 12,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "images/burger.png",
                        width: 70,
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
          ]
          ),
        ),
      ),
    ));

  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Auththen()));
  }

}


class Auththen extends StatefulWidget {
  @override
  _HomepageViewState createState() => _HomepageViewState();
}

class _HomepageViewState extends State <Auththen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.grey[100],
              Colors.grey[100],
            ])),
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //SizedBox(height: 80,),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(
                                  Icons.article_rounded,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: 30,),
                Center(
                 // padding: EdgeInsets.only(left: 20, top: 30, bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/man.png",
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Kehinde Obey',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'kennyobey@gmail',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                  ]
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            padding: EdgeInsets.only(top: 0),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius:
                                BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey[300],
                                    // color: Color.fromARGB(220, 9, 27, 1),
                                    blurRadius: 5,
                                    offset: Offset(
                                      0,
                                      5,
                                    ),
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 2.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "40",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "Active",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(left: 2, ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            padding: EdgeInsets.only(top: 0),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius:
                                BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey[300],
                                    // color: Color.fromARGB(220, 9, 27, 1),
                                    blurRadius: 5,
                                    offset: Offset(
                                      0,
                                      5,
                                    ),
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 2.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "6",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "pending",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            padding: EdgeInsets.only(top: 0),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius:
                                BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey[300],
                                    // color: Color.fromARGB(220, 9, 27, 1),
                                    blurRadius: 5,
                                    offset: Offset(
                                      0,
                                      5,
                                    ),
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 2.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "25",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "complete",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                // padding
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: ListView(
                            padding: EdgeInsets.only(
                                top: 30, left: 30, right: 30, bottom: 30),
                            children: <Widget>[
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/username.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      Spacer(),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Username',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            'kennyobey@gmail.com',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w100,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        '>',
                                        style: TextStyle(fontSize: 30,color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/notification.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      Spacer(),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Notification',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            'Mute Push Email',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w100,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        '>',
                                        style: TextStyle(fontSize: 30,color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/settings.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      Spacer(),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Setting',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            'Security Privacy',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w100,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        '>',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w200,color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(100.0),
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ))
              ]),
        ),
      ),

    );

  }
}


