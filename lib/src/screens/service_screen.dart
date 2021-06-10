import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/src/widgets/custom_drawer.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
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
                "Mix Service",
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
                children: [
                  (MediaQuery.of(context).size.width > 600)
                      ? AppBar(
                          backgroundColor: CustomColors.white,
                          centerTitle: true,
                          elevation: 0,
                          title: Text(
                            "Mix Service",
                            style: TextStyle(
                                fontFamily: "GilroyLight",
                                fontSize: 16,
                                color: CustomColors.black),
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    height: 180,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: CustomColors.purpleMid,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Yearly Pro",
                                          style: TextStyle(
                                              fontFamily: "GilroyBold",
                                              fontSize: 18,
                                              color: CustomColors.white),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "\$70/year",
                                          style: TextStyle(
                                              fontFamily: "GilroyLight",
                                              fontSize: 24,
                                              color: CustomColors.white),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "\$6/month",
                                          style: TextStyle(
                                              fontFamily: "GilroyLight",
                                              fontSize: 14,
                                              color: CustomColors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            color: CustomColors.purpleMid,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                                color: CustomColors.white,
                                                width: 1)),
                                        child: Text(
                                          "Save 20%",
                                          style: TextStyle(
                                              fontFamily: "GilroyLight",
                                              fontSize: 14,
                                              color: CustomColors.white),
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                height: 180,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: CustomColors.purpleLight,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Monthly",
                                      style: TextStyle(
                                          fontFamily: "GilroyBold",
                                          fontSize: 18,
                                          color: CustomColors.white),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "\$7/month",
                                      style: TextStyle(
                                          fontFamily: "GilroyLight",
                                          fontSize: 24,
                                          color: CustomColors.white),
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
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 42),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: CustomColors.purpleLight,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: Text(
                                  "Cisco IPSec, AnyConnect, WebVPN with Unlimited Traffic",
                                  style: TextStyle(
                                      fontFamily: "GilroyLight",
                                      color: CustomColors.black,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: CustomColors.purpleLight,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: Text(
                                  "VMESS/Trojan/VLESS with 100G/m",
                                  style: TextStyle(
                                      fontFamily: "GilroyLight",
                                      color: CustomColors.black,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: CustomColors.purpleLight,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: Text(
                                  "Unlock Stream video and website",
                                  style: TextStyle(
                                      fontFamily: "GilroyLight",
                                      color: CustomColors.black,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: CustomColors.purpleLight,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: Text(
                                  "Support PC and mobile phone.",
                                  style: TextStyle(
                                      fontFamily: "GilroyLight",
                                      color: CustomColors.black,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
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
                        "Subscribe to Mix Service Pro",
                        style: TextStyle(
                            fontFamily: "GilroyLight",
                            fontSize: 16,
                            color: CustomColors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Subscriptions billed as reccuring billing in default. Cancel Anytime.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "GilroyLight",
                          color: CustomColors.greyDark,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
