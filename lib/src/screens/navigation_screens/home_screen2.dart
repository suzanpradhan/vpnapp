import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/src/screens/navigation_screens/location_screen.dart';
import 'package:vpnapp/src/screens/navigation_screens/settings_screen.dart';
import 'package:vpnapp/src/screens/service_screen.dart';
import 'package:vpnapp/src/widgets/custom_drawer.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  bool isConnected = false;
  bool isConnecting = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.white,
        // endDrawerEnableOpenDragGesture: false,
        appBar: (MediaQuery.of(context).size.width < 600)
            ? AppBar(
                leading: Builder(
                  builder: (context) {
                    return IconButton(
                        onPressed: () => Scaffold.of(context).openDrawer(),
                        icon: Icon(
                          EvaIcons.menu2,
                          color: CustomColors.black,
                        ));
                  },
                ),
                title: Text(
                  "VTRSpeed",
                  style: TextStyle(
                      fontFamily: "GilroyBold",
                      fontSize: 16,
                      color: CustomColors.black),
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SettingsScreen()));
                      },
                      icon: Icon(
                        EvaIcons.settings,
                        color: CustomColors.black,
                      ))
                ],
                backgroundColor: CustomColors.white,
                elevation: 0,
              )
            : null,
        drawer: (MediaQuery.of(context).size.width < 600)
            ? Drawer(
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: ListView(
                    children: [
                      DrawerHeader(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                  "assets/images/profile-example.png"),
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
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return ServiceScreen();
                          }));
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
                              gradient: LinearGradient(
                                  colors: [
                                CustomColors.purpleLight,
                                CustomColors.purpleMid
                              ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          EvaIcons.person,
                          color: CustomColors.purpleLight,
                        ),
                        title: Text("Home"),
                        onTap: () {},
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
                        onTap: () {},
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
                          style: TextStyle(
                              fontSize: 14, color: CustomColors.greyDark),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (MediaQuery.of(context).size.width > 600)
                ? CustomDrawer()
                : Container(),
            Expanded(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Opacity(
                          opacity: 0.3,
                          child: Container(
                            height: 320,
                            // width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/world_map_background.png"))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: MaterialButton(
                            elevation: 0,
                            // minWidth: double.infinity,
                            onPressed: () {
                              (MediaQuery.of(context).size.width < 600)
                                  ? Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LocationScreen()))
                                  : Navigator.of(context).push(PageRouteBuilder(
                                      pageBuilder:
                                          (BuildContext context, __, ___) {
                                        return LocationScreen();
                                      },
                                    ));
                            },
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            color: CustomColors.purpleLight,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/flags/us.png"),
                                  radius: 14,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "United States",
                                  style: TextStyle(
                                      fontFamily: "GilroyLight",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: CustomColors.black),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  EvaIcons.arrowIosForward,
                                  color: CustomColors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 220,
                                height: 220,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(999),
                                    border: Border.all(
                                        width: 1, color: Color(0xfff1f1f1))),
                                child: Center(
                                  child: Container(
                                    width: 180,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: (isConnected)
                                                ? [
                                                    CustomColors.purpleLight
                                                        .withOpacity(0.1),
                                                    CustomColors.purpleDark
                                                        .withOpacity(0.2)
                                                  ]
                                                : [
                                                    CustomColors.grey
                                                        .withOpacity(0.1),
                                                    CustomColors.grey
                                                        .withOpacity(0.2)
                                                  ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight),
                                        borderRadius:
                                            BorderRadius.circular(99)),
                                    child: Center(
                                        child: MaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          isConnected = !isConnected;
                                        });
                                      },
                                      minWidth: 130,
                                      padding: EdgeInsets.all(0),
                                      height: 130,
                                      // color: (isConnected)
                                      //     ? CustomColors.orangeAccent
                                      //     : CustomColors.purpleLight,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(99),
                                      ),
                                      child: Container(
                                        width: 130,
                                        height: 130,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: (isConnected)
                                                    ? [
                                                        CustomColors
                                                            .purpleLight,
                                                        CustomColors.purpleDark
                                                      ]
                                                    : [
                                                        CustomColors.grey
                                                            .withOpacity(0.9),
                                                        CustomColors.grey
                                                      ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight),
                                            borderRadius:
                                                BorderRadius.circular(99)),
                                        child: Icon(
                                          EvaIcons.power,
                                          color: CustomColors.white,
                                          size: 42,
                                        ),
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Status: ",
                                        style: TextStyle(
                                            fontFamily: "GilroyLight",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColors.black),
                                      ),
                                      Text(
                                        (isConnected)
                                            ? "Connected"
                                            : "Disconnected",
                                        style: TextStyle(
                                            fontFamily: "GilroyLight",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: (isConnected)
                                                ? Colors.green
                                                : Colors.redAccent),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  (isConnected)
                                      ? Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 18),
                                            decoration: BoxDecoration(
                                                color: CustomColors.purpleMid,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      "Speed",
                                                      style: TextStyle(
                                                          color: CustomColors
                                                              .white,
                                                          fontFamily:
                                                              "GilroyLight",
                                                          fontSize: 16),
                                                    ),
                                                    Text(
                                                      "112ms",
                                                      style: TextStyle(
                                                          color: CustomColors
                                                              .white,
                                                          fontFamily:
                                                              "GilroyBold",
                                                          fontSize: 28),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  color:
                                                      CustomColors.purpleLight,
                                                  width: 1,
                                                  height: 40,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "Time",
                                                      style: TextStyle(
                                                          color: CustomColors
                                                              .white,
                                                          fontFamily:
                                                              "GilroyLight",
                                                          fontSize: 16),
                                                    ),
                                                    Text(
                                                      "00:01:59",
                                                      style: TextStyle(
                                                          color: CustomColors
                                                              .white,
                                                          fontFamily:
                                                              "GilroyBold",
                                                          fontSize: 20),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      : Container(),
                                  // (isConnected)
                                  //     ? Text(
                                  //         "00:00:18",
                                  //         style: TextStyle(
                                  //             fontFamily: "SfProDisplay",
                                  //             fontSize: 16,
                                  //             fontWeight: FontWeight.bold,
                                  //             color: CustomColors.greyDark),
                                  //       )
                                  //     : Container(),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
