import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> userData = [
      {
        'image': "",
        "name": "",
        "msg": "",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        'image': "",
        "name": "",
        "msg": "",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        'image': "",
        "name": "",
        "msg": "",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        'image': "",
        "name": "",
        "msg": "",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        'image': "",
        "name": "",
        "msg": "",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        'image': "",
        "name": "",
        "msg": "",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
    ];
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(itemBuilder: ((context, index) => ListTile())),
    );
  }
}
