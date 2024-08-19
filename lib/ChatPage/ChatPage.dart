import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socket_project/UsersPage/Models/ChatModel.dart';
import 'package:socket_project/UsersPage/Provider/ComProvider.dart';
import 'package:socket_project/utils/widgets/CustomCard.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    var myComProvider = Provider.of<ComProvider>(context, listen: false);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        */
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: myComProvider.chatmodels.length,
          itemBuilder: (contex, index) {
            return CustomCard(
              chatModel: myComProvider.chatmodels[index],
            );
          }),
    );
  }
}
