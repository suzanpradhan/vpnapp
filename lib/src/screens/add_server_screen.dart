import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/models/add_server_option.dart';
import 'package:vpnapp/src/widgets/custom_drawer.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class AddServerScreen extends StatefulWidget {
  @override
  _AddServerScreenState createState() => _AddServerScreenState();
}

class _AddServerScreenState extends State<AddServerScreen> {
  int _selectedProtocol = 1;
  List allProtocals = [
    "WebVPN",
    "AnyConnect",
    "Cisco IPSec",
    "L2TP",
    "VMESS",
    "Trojan",
    "VLESS"
  ];
  List allProtocalsOptions = [
    webVpnList,
    anyConnectList,
    ciscoList,
    l2tpList,
    vmessList,
    trojanList,
    vlessList
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: (MediaQuery.of(context).size.width < 600)
          ? AppBar(
              backgroundColor: CustomColors.white,
              centerTitle: true,
              elevation: 0,
              title: Text(
                "Add Server",
                style: TextStyle(
                    fontFamily: "GilroyLight",
                    fontSize: 16,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  (MediaQuery.of(context).size.width > 600)
                      ? AppBar(
                          backgroundColor: CustomColors.white,
                          centerTitle: true,
                          elevation: 0,
                          leading: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                EvaIcons.arrowIosBack,
                                color: CustomColors.black,
                              )),
                          title: Text(
                            "Add Server",
                            style: TextStyle(
                                fontFamily: "GilroyLight",
                                fontSize: 16,
                                color: CustomColors.black),
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      decoration: BoxDecoration(
                          color: CustomColors.whiteFade,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Protocol",
                            style: TextStyle(
                                fontFamily: "GilroyLight",
                                fontSize: 16,
                                color: CustomColors.black),
                          ),
                          DropdownButton(
                              isDense: true,
                              dropdownColor: CustomColors.whiteFade,
                              value: _selectedProtocol,
                              elevation: 0,
                              icon: Icon(
                                EvaIcons.arrowIosDownward,
                                color: CustomColors.black,
                              ),
                              underline: Container(),
                              style: TextStyle(
                                  fontFamily: "GilroyLight",
                                  color: CustomColors.black),
                              onChanged: (value) {
                                setState(() {
                                  _selectedProtocol = value as int;
                                });
                              },
                              items: [
                                DropdownMenuItem(
                                  child: Text("WebVPN"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("AnyConnect"),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text("Cisco IPSec"),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text("L2TP"),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text("VMESS"),
                                  value: 5,
                                ),
                                DropdownMenuItem(
                                  child: Text("Trojan"),
                                  value: 6,
                                ),
                                DropdownMenuItem(
                                  child: Text("VLESS"),
                                  value: 7,
                                )
                              ])
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            allProtocalsOptions[_selectedProtocol - 1].length,
                        itemBuilder: (BuildContext context, int index) {
                          if (!allProtocalsOptions[_selectedProtocol - 1][index]
                              .isTextField) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 14),
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: CustomColors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: CustomColors.whiteFade,
                                          offset: Offset(3, 3),
                                          blurRadius: 3,
                                          spreadRadius: 1)
                                    ],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      allProtocalsOptions[_selectedProtocol - 1]
                                              [index]
                                          .name,
                                      style: TextStyle(
                                          fontFamily: "GilroyLight",
                                          color: CustomColors.black,
                                          fontSize: 16),
                                    ),
                                    CupertinoSwitch(
                                        activeColor: CustomColors.orangeLight,
                                        value: true,
                                        onChanged: (value) {
                                          setState(() {});
                                        })
                                  ],
                                ),
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 14),
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: CustomColors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: CustomColors.whiteFade,
                                          offset: Offset(3, 3),
                                          blurRadius: 3,
                                          spreadRadius: 1)
                                    ],
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
                                        hintText: allProtocalsOptions[
                                                _selectedProtocol - 1][index]
                                            .name,
                                        hintStyle: TextStyle(
                                            fontFamily: "GilroyLight",
                                            fontSize: 16,
                                            color: CustomColors.grey)),
                                  ),
                                ),
                              ),
                            );
                          }
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      elevation: 0,
                      height: 50,
                      splashColor: CustomColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      onPressed: () {},
                      color: CustomColors.purpleMid,
                      child: Text(
                        "Add Server",
                        style: TextStyle(
                            fontFamily: "GilroyLight",
                            fontSize: 16,
                            color: CustomColors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
