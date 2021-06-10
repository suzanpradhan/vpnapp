import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/src/widgets/custom_drawer.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedProtocol = 1;
  int _selectedAppProxy = 1;
  int _selectedGlobal = 1;
  bool _showTraffic = false;
  bool _allowInSecureTLS = false;
  bool _autoUpdateServerList = false;
  bool _autoReconnect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: (MediaQuery.of(context).size.width < 600)
          ? AppBar(
              backgroundColor: CustomColors.white,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Settings",
                style: TextStyle(
                    fontFamily: "GilroyLight",
                    fontSize: 14,
                    color: CustomColors.black),
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    EvaIcons.arrowIosBack,
                    color: CustomColors.black,
                  )),
            )
          : null,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (MediaQuery.of(context).size.width > 600)
              ? CustomDrawer()
              : Container(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (MediaQuery.of(context).size.width > 600)
                      ? AppBar(
                          backgroundColor: CustomColors.white,
                          elevation: 0,
                          centerTitle: true,
                          title: Text(
                            "Settings",
                            style: TextStyle(
                                fontFamily: "GilroyLight",
                                fontSize: 14,
                                color: CustomColors.black),
                          ),
                        )
                      : Container(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    height: 50,
                    color: CustomColors.whiteFade,
                    child: Row(
                      children: [
                        Text(
                          "GENERAL",
                          style: TextStyle(
                              fontFamily: "GilroyLight",
                              fontSize: 14,
                              color: CustomColors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Protocol",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.black,
                                    fontSize: 14),
                              ),
                              Text(
                                "The server list would refresh/change when protocol changed.",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.greyDark,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        DropdownButton(
                            isDense: true,
                            dropdownColor: CustomColors.white,
                            value: _selectedProtocol,
                            elevation: 4,
                            icon: Icon(
                              EvaIcons.arrowIosDownward,
                              color: CustomColors.black,
                              size: 14,
                            ),
                            underline: Container(),
                            style: TextStyle(
                                fontFamily: "GilroyLight",
                                fontSize: 14,
                                color: CustomColors.black),
                            onChanged: (value) {
                              setState(() {
                                _selectedProtocol = value as int;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                child: Text("AnyConnect"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Option1"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("Option2"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Option3"),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text("Option4"),
                                value: 5,
                              )
                            ])
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "APP Proxy",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.black,
                                    fontSize: 14),
                              ),
                              Text(
                                "Include or exclude app from VPN.",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.greyDark,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        DropdownButton(
                            isDense: true,
                            dropdownColor: CustomColors.white,
                            value: _selectedAppProxy,
                            elevation: 4,
                            icon: Icon(
                              EvaIcons.arrowIosDownward,
                              color: CustomColors.black,
                              size: 14,
                            ),
                            underline: Container(),
                            style: TextStyle(
                                fontFamily: "GilroyLight",
                                fontSize: 14,
                                color: CustomColors.black),
                            onChanged: (value) {
                              setState(() {
                                _selectedAppProxy = value as int;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                child: Text("All Application"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Option1"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("Option2"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Option3"),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text("Option4"),
                                value: 5,
                              )
                            ])
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Routing Rules",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.black,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        DropdownButton(
                            isDense: true,
                            dropdownColor: CustomColors.white,
                            value: _selectedGlobal,
                            elevation: 4,
                            icon: Icon(
                              EvaIcons.arrowIosDownward,
                              color: CustomColors.black,
                              size: 14,
                            ),
                            underline: Container(),
                            style: TextStyle(
                                fontFamily: "GilroyLight",
                                fontSize: 14,
                                color: CustomColors.black),
                            onChanged: (value) {
                              setState(() {
                                _selectedGlobal = value as int;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                child: Text("Global"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Option1"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("Option2"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Option3"),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text("Option4"),
                                value: 5,
                              )
                            ])
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Show Traffic",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.black,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CupertinoSwitch(
                            activeColor: CustomColors.orangeLight,
                            value: _showTraffic,
                            onChanged: (value) {
                              setState(() {
                                _showTraffic = value;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    color: CustomColors.whiteFade,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          "VMESS/TROJAN/VLESS",
                          style: TextStyle(
                              fontFamily: "GilroyLight",
                              fontSize: 14,
                              color: CustomColors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Routing Rules",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.black,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        DropdownButton(
                            isDense: true,
                            dropdownColor: CustomColors.white,
                            value: _selectedGlobal,
                            elevation: 4,
                            icon: Icon(
                              EvaIcons.arrowIosDownward,
                              color: CustomColors.black,
                              size: 14,
                            ),
                            underline: Container(),
                            style: TextStyle(
                                fontFamily: "GilroyLight",
                                fontSize: 14,
                                color: CustomColors.black),
                            onChanged: (value) {
                              setState(() {
                                _selectedGlobal = value as int;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                child: Text("Global"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Option1"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("Option2"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Option3"),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text("Option4"),
                                value: 5,
                              )
                            ])
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Allow insecure TLS",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.black,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CupertinoSwitch(
                            activeColor: CustomColors.orangeLight,
                            value: _allowInSecureTLS,
                            onChanged: (value) {
                              setState(() {
                                _allowInSecureTLS = value;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    color: CustomColors.whiteFade,
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          "AUTOMATIC",
                          style: TextStyle(
                              fontFamily: "GilroyLight",
                              fontSize: 14,
                              color: CustomColors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Auto Update Server List",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.black,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CupertinoSwitch(
                            activeColor: CustomColors.orangeLight,
                            value: _autoUpdateServerList,
                            onChanged: (value) {
                              setState(() {
                                _autoUpdateServerList = value;
                              });
                            })
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Auto Reconnect",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.black,
                                    fontSize: 14),
                              ),
                              Text(
                                "Reconnect after network outage/failover.",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.greyDark,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CupertinoSwitch(
                            activeColor: CustomColors.orangeLight,
                            value: _autoReconnect,
                            onChanged: (value) {
                              setState(() {
                                _autoReconnect = value;
                              });
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "About",
                      style: TextStyle(
                          fontFamily: "GilroyLight",
                          fontSize: 14,
                          color: CustomColors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Version 1.9.1",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.greyDark,
                                    fontSize: 14),
                              ),
                              Text(
                                "Website: www.vtrspeed.com",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.greyDark,
                                    fontSize: 14),
                              ),
                              Text(
                                "Telegram: t.me/vtrspeed",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.greyDark,
                                    fontSize: 14),
                              ),
                              Text(
                                "Email: support@vpnteam.net",
                                style: TextStyle(
                                    fontFamily: "GilroyLight",
                                    color: CustomColors.greyDark,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
