import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/src/screens/navigation_screens/home_screen.dart';
import 'package:vpnapp/src/screens/navigation_screens/home_screen2.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool ischeckActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.white,
        appBar: AppBar(
          backgroundColor: CustomColors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                EvaIcons.arrowIosBack,
                color: CustomColors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: (MediaQuery.of(context).size.width < 600)
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontFamily: "GilroyLight",
                      color: CustomColors.black,
                      fontSize: 32),
                ),
                Text(
                  "You have been missed.",
                  style: TextStyle(
                      fontFamily: "GilroyLight",
                      color: CustomColors.greyDark,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 42,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width < 600)
                      ? double.infinity
                      : 320,
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: CustomColors.whiteFade,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                          fontFamily: "GilroyLight",
                          color: CustomColors.black,
                          fontSize: 16),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: TextStyle(
                              fontFamily: "GilroyLight",
                              fontSize: 16,
                              color: CustomColors.greyDark)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width < 600)
                      ? double.infinity
                      : 320,
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: CustomColors.whiteFade,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                          fontFamily: "GilroyLight",
                          color: CustomColors.black,
                          fontSize: 16),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontFamily: "GilroyLight",
                              fontSize: 16,
                              color: CustomColors.greyDark)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width < 600)
                      ? double.infinity
                      : 320,
                  child: Row(
                    children: [
                      Checkbox(
                        value: ischeckActive,
                        onChanged: (value) {
                          setState(() {
                            ischeckActive = value!;
                          });
                        },
                        activeColor: CustomColors.orangeAccent,
                      ),
                      Text(
                        "V2RAY/Trojan/VLESS only",
                        style: TextStyle(
                            fontFamily: "GilroyLight",
                            fontSize: 14,
                            color: CustomColors.greyDark),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                MaterialButton(
                  minWidth: (MediaQuery.of(context).size.width < 600)
                      ? double.infinity
                      : 320,
                  elevation: 0,
                  height: 50,
                  splashColor: CustomColors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => HomePage2()));
                  },
                  color: CustomColors.purpleMid,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: "GilroyLight",
                        fontSize: 16,
                        color: CustomColors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? Order Now",
                        style: TextStyle(
                            fontFamily: "GilroyLight",
                            fontSize: 14,
                            color: CustomColors.greyDark),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
