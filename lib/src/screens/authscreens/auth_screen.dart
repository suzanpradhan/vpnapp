import 'package:flutter/material.dart';
import 'package:vpnapp/src/screens/authscreens/login_screen.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.purpleDark,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/background-auth.png"))),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      "VTRSpeed",
                      style: TextStyle(
                          fontSize: 24,
                          color: CustomColors.white,
                          fontFamily: "Righteous"),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "The best way to navigate your world and discover new interests. Let's get started!",
                      style: TextStyle(
                          fontFamily: "GilroyLight",
                          fontSize: 14,
                          color: CustomColors.whiteFade),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      minWidth: (MediaQuery.of(context).size.width < 600)
                          ? double.infinity
                          : 320,
                      elevation: 0,
                      height: 50,
                      splashColor: CustomColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      onPressed: () {},
                      color: CustomColors.purpleLight,
                      child: Text(
                        "Sign Up Now",
                        style: TextStyle(
                            fontFamily: "GilroyLight",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.black),
                      ),
                    ),
                    SizedBox(
                      height: 14,
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
                            builder: (BuildContext context) => LoginScreen()));
                      },
                      color: CustomColors.white.withOpacity(0.9),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: "GilroyLight",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: CustomColors.black),
                      ),
                    ),
                    SizedBox(
                      height: 14,
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
                      onPressed: () {},
                      color: CustomColors.purpleMid,
                      child: Text(
                        "Manual Setup",
                        style: TextStyle(
                            fontFamily: "GilroyLight",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: CustomColors.white),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
