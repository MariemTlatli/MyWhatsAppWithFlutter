import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:socket_project/ConversationPage/IndividualPage.dart';
import 'package:socket_project/UsersPage/Models/ChatModel.dart';
import 'package:socket_project/UsersPage/Provider/ComProvider.dart';

class CustomCard extends StatelessWidget {
  var chatModel;

  CustomCard({
    required ChatModel this.chatModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var myComProvider = Provider.of<ComProvider>(context, listen: false);

    return InkWell(
      onTap: () {
        myComProvider.SetDestination(chatModel);
        Navigator.push(
            context, MaterialPageRoute(builder: (contex) => IndividualPage()));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(
                chatModel.isGroup ? "assets/groups.svg" : "assets/person.svg",
                color: Colors.white,
                height: 36,
                width: 36,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
