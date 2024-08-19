import 'package:flutter/material.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        print(value);
      },
      itemBuilder: (BuildContext contesxt) {
        return [
          PopupMenuItem(
            child: Text("New group"),
            value: "New group",
          ),
          PopupMenuItem(
            child: Text("New broadcast"),
            value: "New broadcast",
          ),
          PopupMenuItem(
            child: Text("Whatsapp Web"),
            value: "Whatsapp Web",
          ),
          PopupMenuItem(
            child: Text("Starred messages"),
            value: "Starred messages",
          ),
          PopupMenuItem(
            child: Text("Settings"),
            value: "Settings",
          ),
        ];
      },
    );
  }
}
