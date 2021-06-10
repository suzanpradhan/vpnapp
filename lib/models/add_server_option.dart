import 'package:flutter/material.dart';

class AddServerOption {
  String name;
  bool isTextField;

  AddServerOption({required this.isTextField, required this.name});
}

List<AddServerOption> webVpnList = [
  AddServerOption(isTextField: true, name: "Remark"),
  AddServerOption(isTextField: true, name: "Server Address"),
  AddServerOption(isTextField: true, name: "Port"),
  AddServerOption(isTextField: true, name: "Username"),
  AddServerOption(isTextField: true, name: "Password")
];

List<AddServerOption> anyConnectList = [
  AddServerOption(isTextField: true, name: "Remark"),
  AddServerOption(isTextField: true, name: "Server Address"),
  AddServerOption(isTextField: true, name: "Port"),
  AddServerOption(isTextField: true, name: "Username"),
  AddServerOption(isTextField: true, name: "Password")
];

List<AddServerOption> ciscoList = <AddServerOption>[
  AddServerOption(isTextField: true, name: "Remark"),
  AddServerOption(isTextField: true, name: "Server Address"),
  AddServerOption(isTextField: true, name: "Group Name"),
  AddServerOption(isTextField: true, name: "IPSec PSK"),
  AddServerOption(isTextField: true, name: "Username"),
  AddServerOption(isTextField: true, name: "Password")
];

List<AddServerOption> l2tpList = [
  AddServerOption(isTextField: true, name: "Remark"),
  AddServerOption(isTextField: true, name: "Server Address"),
  AddServerOption(isTextField: true, name: "IPSec PSK"),
  AddServerOption(isTextField: true, name: "Username"),
  AddServerOption(isTextField: true, name: "Password")
];

List<AddServerOption> vmessList = [
  AddServerOption(isTextField: true, name: "Remark"),
  AddServerOption(isTextField: true, name: "Server Address"),
  AddServerOption(isTextField: true, name: "Port"),
  AddServerOption(isTextField: true, name: "UUID"),
  AddServerOption(isTextField: true, name: "Alter ID"),
  AddServerOption(isTextField: false, name: "TLS"),
];

List<AddServerOption> trojanList = [
  AddServerOption(isTextField: true, name: "Remark"),
  AddServerOption(isTextField: true, name: "Server Address"),
  AddServerOption(isTextField: true, name: "Port"),
  AddServerOption(isTextField: true, name: "Password")
];

List<AddServerOption> vlessList = [
  AddServerOption(isTextField: true, name: "Remark"),
  AddServerOption(isTextField: true, name: "Server Address"),
  AddServerOption(isTextField: true, name: "Port"),
  AddServerOption(isTextField: true, name: "UUID"),
  AddServerOption(isTextField: false, name: "TLS"),
  AddServerOption(isTextField: false, name: "XTLS Direct"),
];
