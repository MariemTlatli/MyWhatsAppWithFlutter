import 'package:flutter/material.dart';
import 'package:socket_project/UsersPage/Models/ChatModel.dart';

class ComProvider extends ChangeNotifier {
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Mariem Tlatli",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Ines Noussa",
      isGroup: false,
      currentMessage: "Hi Kishor",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),
    ChatModel(
      name: "Chaima KH",
      isGroup: false,
      currentMessage: "Hi Dev Stack",
      time: "8:00",
      icon: "person.svg",
      id: 3,
    ),

    ChatModel(
      name: "Rihem Dev",
      isGroup: false,
      currentMessage: "Hi Dev Stack",
      time: "2:00",
      icon: "person.svg",
      id: 4,
    ),

    // ChatModel(
    //   name: "NodeJs Group",
    //   isGroup: true,
    //   currentMessage: "New NodejS Post",
    //   time: "2:00",
    //   icon: "group.svg",
    // ),
  ];

  late ChatModel chatSource;
  late ChatModel chatDestination;

  bool show = false;

  bool sendButton = false;

  void setSendButton(v) {
    sendButton = v;
    notifyListeners();
  }

  void SetSource(v) {
    chatSource = v;
    notifyListeners();
  }

  void SetDestination(v) {
    chatDestination = v;
    notifyListeners();
  }

  void setShow(v) {
    show = v;
    notifyListeners();
  }
}
