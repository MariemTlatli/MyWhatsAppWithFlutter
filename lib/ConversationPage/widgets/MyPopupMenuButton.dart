import 'package:flutter/material.dart';

class MyPopupMenuButton extends StatelessWidget {
  const MyPopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      padding: EdgeInsets.all(0),
      onSelected: (value) {
        print(value);
      },
      itemBuilder: (BuildContext contesxt) {
        return [
          PopupMenuItem(
            child: Text("View Contact"),
            value: "View Contact",
          ),
          PopupMenuItem(
            child: Text("Media, links, and docs"),
            value: "Media, links, and docs",
          ),
          PopupMenuItem(
            child: Text("Whatsapp Web"),
            value: "Whatsapp Web",
          ),
          PopupMenuItem(
            child: Text("Search"),
            value: "Search",
          ),
          PopupMenuItem(
            child: Text("Mute Notification"),
            value: "Mute Notification",
          ),
          PopupMenuItem(
            child: Text("Wallpaper"),
            value: "Wallpaper",
          ),
        ];
      },
    );
  }
}
