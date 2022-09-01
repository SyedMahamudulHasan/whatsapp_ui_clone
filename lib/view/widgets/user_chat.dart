
import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class UserChat extends StatelessWidget {
  const UserChat({
    Key? key,
    required this.user,
    required this.index,
  }) : super(key: key);

  final List<Map> user;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(
          user[index]["image"],
        ),
      ),
      title: Text(
        user[index]["name"],
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: index == 0
          ? Column(
              children: [
                Text(
                  user[index]["time"],
                  style: const TextStyle(
                    color: AppColors.fltButton,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.fltButton,
                  ),
                  child: const Text(
                    '5',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          : Text(user[index]["time"]),
      subtitle: index == 1
          ? Text(
              user[index]['lastMsg'],
              style: const TextStyle(
                color: AppColors.fltButton,
              ),
            )
          : index == 2
              ? Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.video_call_rounded),
                    ),
                    Text(user[index]['lastMsg'])
                  ],
                )
              : index == 4
                  ? Row(
                      children: [
                        const Icon(
                          Icons.check,
                          color: AppColors.fltButton,
                        ),
                        Text(user[index]['lastMsg'])
                      ],
                    )
                  : Text(user[index]['lastMsg']),
    );
  }
}
