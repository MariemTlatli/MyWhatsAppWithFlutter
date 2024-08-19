import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socket_project/ChatPage/ChatPage.dart';
import 'package:socket_project/HomeScreen/Views/HomeScreen.dart';
import 'package:socket_project/UsersPage/Models/ChatModel.dart';
import 'package:socket_project/UsersPage/Provider/ComProvider.dart';
import 'package:socket_project/utils/widgets/ButtonCard.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late ChatModel sourceChat;
  @override
  Widget build(BuildContext context) {
    var myComProvider = Provider.of<ComProvider>(context, listen: false);

    return Scaffold(
      body: ListView.builder(
          itemCount: myComProvider.chatmodels.length,
          itemBuilder: (contex, index) => InkWell(
                onTap: () {
                  sourceChat = myComProvider.chatmodels.removeAt(index);
                  myComProvider.SetSource(sourceChat);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (builder) => HomeScreen()));
                },
                child: ButtonCard(
                  name: myComProvider.chatmodels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
