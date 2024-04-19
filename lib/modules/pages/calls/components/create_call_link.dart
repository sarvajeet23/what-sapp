// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CreateCallLink extends StatelessWidget {
  const CreateCallLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Call Link"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Anyone with WhatApp can use this link to join this call. Only share it with people you trust.",
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.video_call,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Links",
                        style: TextStyle(fontSize: 18),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: ListTile(
                      title: Text(
                        "Call type",
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text("Video"),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right_rounded),
                    title: Text("Send link via WhatApp"),
                  ),
                  ListTile(
                    leading: Icon(Icons.copy),
                    title: Text("Copy link"),
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text("Share link"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
