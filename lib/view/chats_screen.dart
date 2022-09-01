import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_ui_clone/constants/app_color.dart';
import 'package:whatsapp_ui_clone/model/user_chat_data.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map> user = [
      {
        "image": "assets/images/smiling.png",
        "name": "Weekend",
        "lastMsg": "Sofia: Sticker",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        "image": "assets/images/bob.png",
        "name": "Joao Pereira",
        "lastMsg": "typing...",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        "image": "assets/images/doraemon.png",
        "name": "Doraemon",
        "lastMsg": "Best breakfast ever",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        "image": "assets/images/emoticon.png",
        "name": "Family",
        "lastMsg": "Mom: I love you. ",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        "image": "assets/images/unamused.png",
        "name": "Alicia Garcia",
        "lastMsg": "It was so great to see you! let's...",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        "image": "assets/images/pokemon.png",
        "name": "Pikachu",
        "lastMsg": "It was so great to see you! let's...",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        "image": "assets/images/sasuke.png",
        "name": "Sandra's Cakes",
        "lastMsg": "It will be ready on Thursday!",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
      {
        "image": "assets/images/smiling.png",
        "name": "Weekend",
        "lastMsg": "Sofia: Sticker",
        "time": DateFormat.Hm().format(DateTime.now()).toString(),
      },
    ];

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: user.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              ListTile(
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
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: size.width * 60 / size.width + 10),
                child: const Divider(
                  thickness: 2,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
