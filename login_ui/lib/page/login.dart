import 'package:flutter/material.dart';
import 'package:login_ui/page/splash.dart';
import 'package:login_ui/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      home: loginPage(screenSize, context),
    );
  }

  Scaffold loginPage(Size screenSize, BuildContext context) {
    return Scaffold(
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
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(
                    screenSize.width / 8.5, screenSize.height / 15, 0, 0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SplahPage();
                      }));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 26,
                    )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    screenSize.width / 8.5, screenSize.height / 6, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login to \nyour account",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: screenSize.width / 8.5),
                height: 62,
                width: screenSize.width / 1.4,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 11,
                      spreadRadius: 1,
                      offset: Offset(0, 5))
                ]),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32)),
                      filled: true,
                      fillColor: Colors.white,
                      // enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(32)),
                      hintText: "Email Address"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: screenSize.width / 8.5),
                height: 62,
                width: screenSize.width / 1.4,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 11,
                      spreadRadius: 1,
                      offset: Offset(0, 5))
                ]),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixStyle: const TextStyle(color: Colors.green),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(32)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Password"),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: screenSize.width / 8.5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Remember me",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24),
                    ),
                    SecondSwitch(),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: screenSize.width / 8.5),
                height: 62,
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
                height: 12,
              ),
              Center(
                child: Text(
                  "forgot passsword ?",
                  style: TextStyle(
                      color: Color(0xFFFEE05C),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
