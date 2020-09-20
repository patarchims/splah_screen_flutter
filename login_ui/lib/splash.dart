import 'package:flutter/material.dart';

class SplahPage extends StatefulWidget {
  @override
  _SplahPageState createState() => _SplahPageState();
}

class _SplahPageState extends State<SplahPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                      Color(0xFFEAA24E).withOpacity(0.9),
                      Color(0xFFFFD958).withOpacity(0.9)
                    ])),
              ),
            ),
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, screenSize.height / 2.5, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        "MEET UP",
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width / 3.5),
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Join our community  of 10+\nmillion people all over the word",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 31,
                      ),
                      Container(
                        height: 62,
                        width: screenSize.width / 1.4,
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFFEE05C),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(32),
                                topRight: Radius.circular(32),
                                bottomRight: Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 11,
                                  spreadRadius: 1,
                                  offset: Offset(0, 5))
                            ]),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Container(
                        height: 62,
                        width: screenSize.width / 1.4,
                        child: Center(
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Color(0xFFFEE05C)),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            topRight: Radius.circular(0),
                            topLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
