// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test9/modules/pages/chat/components/select_contact.dart';

Widget suffixIcon() => Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
        PopupMenuButton(
          position: PopupMenuPosition.values[1],
          itemBuilder: (context) => [
            PopupMenuItem(onTap: () {}, child: Text("View contact")),
            PopupMenuItem(onTap: () {}, child: Text("Media, Links, and docs")),
            PopupMenuItem(onTap: () {}, child: Text("Search")),
            PopupMenuItem(onTap: () {}, child: Text("Mute notification")),
            PopupMenuItem(onTap: () {}, child: Text("Disappearing messages")),
            PopupMenuItem(
                enabled: true,
                value: 1,
                onTap: () {},
                child: Row(
                  children: [Text("More"), Spacer(), Icon(Icons.arrow_right)],
                )),
          ],
        )
      ],
    );
