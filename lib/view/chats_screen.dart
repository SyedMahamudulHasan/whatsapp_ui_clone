import 'package:flutter/material.dart';
import '../utils/list_user.dart';
import 'widgets/user_chat.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: user.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
                child: UserChat(
                  user: user,
                  index: index,
                ),
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
