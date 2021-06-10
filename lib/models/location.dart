import 'package:flutter/cupertino.dart';

class Location {
  ImageProvider imageProvider;
  String name;
  String speed;

  Location(
      {required this.imageProvider, required this.name, required this.speed});
}

List<Location> listOfLocation = [
  Location(
      imageProvider: AssetImage("assets/images/flags/us.png"),
      name: "United States",
      speed: "112ms"),
  Location(
      imageProvider: AssetImage("assets/images/flags/fr.png"),
      name: "France",
      speed: "240ms"),
  Location(
      imageProvider: AssetImage("assets/images/flags/gb.png"),
      name: "United Kingdom",
      speed: "98ms"),
  Location(
      imageProvider: AssetImage("assets/images/flags/jp.png"),
      name: "Japan",
      speed: "150ms"),
  Location(
      imageProvider: AssetImage("assets/images/flags/sg.png"),
      name: "Singapore",
      speed: "147ms")
];
