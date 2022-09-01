import 'package:intl/intl.dart';

class ChatData {
  final String? image;
  final String? name;
  final String? lastMsg;
  final String? time;

  ChatData({this.image, this.name, this.lastMsg, this.time});

  List<ChatData> get getData => [
        ChatData(
          image: "assets/images/smiling.png",
          name: "Weekend",
          lastMsg: "Sofia: Sticker",
          time: DateFormat.Hm().format(DateTime.now()).toString(),
        ),
        ChatData(
          image: "assets/images/bob.png",
          name: "Joao Pereira",
          lastMsg: "typing",
          time: DateFormat.Hm().format(DateTime.now()).toString(),
        ),
        ChatData(
          image: "assets/images/doraemon.png",
          name: "Doraemon",
          lastMsg: "Best breakfast ever",
          time: DateFormat.Hm().format(DateTime.now()).toString(),
        ),
        ChatData(
          image: "assets/images/emoticon.png",
          name: "Family",
          lastMsg: "Mom: I love you. ",
          time: DateFormat.Hm().format(DateTime.now()).toString(),
        ),
        ChatData(
          image: "assets/images/pokemon.png",
          name: "Pikachu",
          lastMsg: "It was so great to see you! let's...",
          time: DateFormat.Hm().format(DateTime.now()).toString(),
        ),
        ChatData(
          image: "assets/images/sasuki.png",
          name: "Sandra's Cakes",
          lastMsg: "It will be ready on Thursday!",
          time: DateFormat.Hm().format(DateTime.now()).toString(),
        ),
      ];
}
