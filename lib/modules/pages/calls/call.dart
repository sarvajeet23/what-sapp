// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_label, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test9/data/data.dart';
import 'package:test9/data/maping.dart';
import 'package:test9/modules/pages/calls/components/call_add.dart';
import 'package:test9/modules/pages/chat/chat.dart';
import 'package:test9/modules/pages/calls/components/create_call_link.dart';
import 'package:test9/utility/size_box.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  var _image;
  final imagePicker = ImagePicker();

  Future getImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      setState(() {
        _image = File(image!.path);
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Calls",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: getImage, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
              position: PopupMenuPosition.under,
              itemBuilder: (context) => [
                    PopupMenuItem(
                        onTap: () {}, child: const Text("Clear call log")),
                    PopupMenuItem(onTap: () {}, child: const Text("Settings")),
                  ])
        ],
      ),
      body: Center(
          child: _image == null
              ? Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CreateCallLink()));
                        },
                        child: CustomListTileLinkPage(
                          leading: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 30,
                            child: Icon(
                              Icons.attachment_outlined,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            "Create call link",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          subtitle: Text("Share a link for you WhatApp call",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14)),
                        ),
                      ),
                      hsize19,
                      const Text("Recent",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Expanded(
                        child: ListView.builder(
                            // itemCount: Data().userData.length,

                            itemCount: 11,
                            itemBuilder: (context, index) {
                              final model = Data().userData[index];
                              return Contacts(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(model.picture ?? ""),
                                  radius: 30,
                                ),
                                title: model.name ?? "",
                                subtitle: Text(userList[index]["name"] ?? "a"),
                                subicon: Icon(Icons.access_time_outlined),
                                trialing: Icon(Icons.call_outlined),
                                onTp: () {},
                              );
                            }),
                      )
                    ],
                  ),
                )
              : Image.file(_image)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CallAdd()));
        },
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add_ic_call_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomListTileLinkPage extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final double? size;
  const CustomListTileLinkPage(
      {super.key,
      required this.leading,
      required this.title,
      required this.subtitle,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading,
        wsize10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title,
            SizedBox(height: size),
            subtitle,
          ],
        )
      ],
    );
  }
}
