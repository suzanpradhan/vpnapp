import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/src/screens/navigation_screens/home_screen2.dart';
import 'package:vpnapp/src/screens/navigation_screens/settings_screen.dart';
import 'package:vpnapp/src/screens/service_screen.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(color: CustomColors.white, boxShadow: [
          BoxShadow(
              color: CustomColors.whiteFade,
              blurRadius: 5,
              offset: Offset(3, 5),
              spreadRadius: 1)
        ]),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage:
                        AssetImage("assets/images/profile-example.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alex Brooker",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(PageRouteBuilder(
                  pageBuilder: (BuildContext context, __, ___) {
                    return ServiceScreen();
                  },
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 50,
                child: Row(
                  children: [
                    Text(
                      "Get Mix Service",
                      style: TextStyle(
                          fontFamily: "GilroyBold",
                          fontSize: 16,
                          color: CustomColors.white),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  CustomColors.purpleLight,
                  CustomColors.purpleMid
                ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
              ),
            ),
            ListTile(
              leading: Icon(
                EvaIcons.person,
                color: CustomColors.purpleLight,
              ),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pushReplacement(PageRouteBuilder(
                  pageBuilder: (BuildContext context, __, ___) {
                    return HomePage2();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(
                EvaIcons.globe2,
                color: CustomColors.purpleLight,
              ),
              title: Text("Services"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                EvaIcons.settings2,
                color: CustomColors.purpleLight,
              ),
              title: Text("Settings"),
              onTap: () {
                Navigator.of(context).pushReplacement(PageRouteBuilder(
                  pageBuilder: (BuildContext context, __, ___) {
                    return SettingsScreen();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(
                EvaIcons.email,
                color: CustomColors.purpleLight,
              ),
              title: Text("Contact"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                EvaIcons.logOut,
                color: CustomColors.purpleLight,
              ),
              title: Text("Log Out"),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Version 1.0.1",
                style: TextStyle(fontSize: 14, color: CustomColors.greyDark),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
