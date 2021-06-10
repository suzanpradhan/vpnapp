import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/models/location.dart';
import 'package:vpnapp/src/screens/add_server_screen.dart';
import 'package:vpnapp/src/widgets/custom_drawer.dart';
import 'package:vpnapp/utls/contants/custom_colors.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int _selectedProtocol = 1;
  int _selectedLocation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: (MediaQuery.of(context).size.width < 600)
          ? AppBar(
              backgroundColor: CustomColors.white,
              elevation: 0,
              title: Text(
                "Location",
                style: TextStyle(
                    fontFamily: "GilroyBold",
                    color: CustomColors.black,
                    fontSize: 14),
              ),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    EvaIcons.arrowIosBack,
                    color: CustomColors.black,
                  )),
              actions: [
                Row(
                  children: [
                    // Text("Add Server",
                    //     style: TextStyle(
                    //         fontFamily: "GilroyLight",
                    //         fontSize: 14,
                    //         color: CustomColors.black)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddServerScreen()));
                          },
                          icon: Icon(
                            EvaIcons.plusSquare,
                            color: CustomColors.black,
                            size: 24,
                          )),
                    ),
                  ],
                )
              ],
            )
          : null,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (MediaQuery.of(context).size.width > 600)
              ? CustomDrawer()
              : Container(),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  (MediaQuery.of(context).size.width >= 600)
                      ? AppBar(
                          backgroundColor: CustomColors.white,
                          elevation: 0,
                          title: Text(
                            "Location",
                            style: TextStyle(
                                fontFamily: "GilroyBold",
                                color: CustomColors.black,
                                fontSize: 14),
                          ),
                          leading: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                EvaIcons.arrowIosBack,
                                color: CustomColors.black,
                              )),
                          centerTitle: true,
                          actions: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      EvaIcons.flash,
                                      color: CustomColors.black,
                                      size: 20,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: IconButton(
                                      onPressed: () {
                                        (MediaQuery.of(context).size.width <
                                                600)
                                            ? Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        AddServerScreen()))
                                            : Navigator.of(context)
                                                .push(PageRouteBuilder(
                                                pageBuilder:
                                                    (BuildContext context, __,
                                                        ___) {
                                                  return AddServerScreen();
                                                },
                                              ));
                                      },
                                      icon: Icon(
                                        EvaIcons.plusSquare,
                                        color: CustomColors.black,
                                        size: 24,
                                      )),
                                ),
                              ],
                            )
                          ],
                        )
                      : Container(),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            decoration: BoxDecoration(
                                color: CustomColors.whiteFade,
                                // boxShadow: [
                                //   BoxShadow(
                                //       color: CustomColors.whiteFade,
                                //       offset: Offset(3, 3),
                                //       blurRadius: 3,
                                //       spreadRadius: 1)
                                // ],
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
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemCount: listOfLocation.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: 14, left: 14, top: 14),
                                    decoration: BoxDecoration(
                                        color: CustomColors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: CustomColors.whiteFade,
                                              offset: Offset(3, 3),
                                              blurRadius: 3,
                                              spreadRadius: 1)
                                        ],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage:
                                                  listOfLocation[index]
                                                      .imageProvider,
                                              radius: 14,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              listOfLocation[index].name,
                                              style: TextStyle(
                                                  fontFamily: "GilroyLight",
                                                  fontSize: 16,
                                                  color: CustomColors.black),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(listOfLocation[index].speed,
                                                style: TextStyle(
                                                  fontFamily: "GilroyLight",
                                                  fontSize: 16,
                                                  color: (int.parse(
                                                              listOfLocation[
                                                                      index]
                                                                  .speed
                                                                  .split(
                                                                      "m")[0]) >
                                                          140)
                                                      ? Colors.orange
                                                      : Colors.green,
                                                )),
                                            Radio(
                                                activeColor:
                                                    CustomColors.purpleMid,
                                                value: index,
                                                groupValue: _selectedLocation,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _selectedLocation =
                                                        value as int;
                                                  });
                                                }),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 14),
                    child: Text(
                      "Pull Down the list to refresh.",
                      style: TextStyle(
                          fontFamily: "GilroyLight",
                          fontSize: 14,
                          color: CustomColors.greyDark),
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
