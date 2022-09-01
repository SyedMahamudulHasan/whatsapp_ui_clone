import 'package:flutter/material.dart';
import '../constants/app_color.dart';

class TabBarItem {
  static final msg_notification = 1;
  static final tabList = [
    const Tab(
      icon: Icon(Icons.camera_alt_rounded),
    ),
    Tab(
      //text: "CHATS",
      child: Row(
        children: [
          const Flexible(
            child: Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: Text('CHATS'),
            ),
          ),
          msg_notification == 0
              ? const Padding(
                  padding: EdgeInsets.zero,
                )
              : Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Text(
                    msg_notification.toString(),
                    style: TextStyle(
                      color: AppColors.appbarColor,
                    ),
                  ),
                )
        ],
      ),
    ),
    const Tab(
      text: "STATUS",
    ),
    const Tab(
      text: "CALLS",
    ),
  ];
}
