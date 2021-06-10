import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/src/screens/navigation_screens/location_screen.dart';
import 'package:vpnapp/src/screens/navigation_screens/settings_screen.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isConnected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.purpleDark,
        // endDrawerEnableOpenDragGesture: false,
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(
                    EvaIcons.menu2,
                    color: CustomColors.white,
                  ));
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SettingsScreen()));
                },
                icon: Icon(
                  EvaIcons.settings,
                  color: CustomColors.white,
                ))
          ],
          backgroundColor: CustomColors.purpleDark,
          elevation: 0,
        ),
        drawer: Drawer(
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
                    style:
                        TextStyle(fontSize: 14, color: CustomColors.greyDark),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                    color: (isConnected)
                        ? CustomColors.orangeAccent
                        : CustomColors.purpleLight,
                    borderRadius: BorderRadius.circular(99)),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                        color: CustomColors.purpleDark,
                        borderRadius: BorderRadius.circular(99)),
                    child: Center(
                        child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          isConnected = !isConnected;
                        });
                      },
                      minWidth: 120,
                      height: 120,
                      splashColor: (isConnected)
                          ? CustomColors.purpleLight
                          : CustomColors.orangeAccent,
                      color: (isConnected)
                          ? CustomColors.orangeAccent
                          : CustomColors.purpleLight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Icon(
                        EvaIcons.power,
                        color: CustomColors.purpleDark,
                        size: 42,
                      ),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Status: ",
                    style: TextStyle(
                        fontFamily: "SfProDisplay",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.white),
                  ),
                  Text(
                    (isConnected) ? "Connected" : "Disconnected",
                    style: TextStyle(
                        fontFamily: "GilroyLight",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: (isConnected)
                            ? Colors.greenAccent
                            : Colors.redAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => LocationScreen()));
                },
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: CustomColors.white, width: 1)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/flags/us.png"),
                      radius: 16,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "United States",
                      style: TextStyle(
                          fontFamily: "GilroyLight",
                          fontSize: 16,
                          color: CustomColors.white),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      EvaIcons.arrowIosForward,
                      color: CustomColors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                  decoration: BoxDecoration(
                      color: CustomColors.purpleMid,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Speed",
                            style: TextStyle(
                                color: CustomColors.white,
                                fontFamily: "GilroyLight",
                                fontSize: 16),
                          ),
                          Text(
                            "112ms",
                            style: TextStyle(
                                color: CustomColors.white,
                                fontFamily: "GilroyBold",
                                fontSize: 28),
                          ),
                        ],
                      ),
                      Container(
                        color: CustomColors.purpleLight,
                        width: 1,
                        height: 40,
                      ),
                      Column(
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                color: CustomColors.white,
                                fontFamily: "GilroyLight",
                                fontSize: 16),
                          ),
                          Text(
                            "00:01:59",
                            style: TextStyle(
                                color: CustomColors.white,
                                fontFamily: "GilroyBold",
                                fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
