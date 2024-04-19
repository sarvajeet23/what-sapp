// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test9/modules/pages/update/components/channel.dart';
import 'package:test9/modules/pages/update/components/flotting_button.dart';
import 'package:test9/modules/pages/update/components/follow_container.dart';
import 'package:test9/modules/pages/update/components/mystatus.dart';
import 'package:test9/modules/pages/update/components/status_popmenu.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Updates",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
              position: PopupMenuPosition.under,
              itemBuilder: (context) => [
                    PopupMenuItem(
                        onTap: () {}, child: const Text("Sell all statues")),
                    PopupMenuItem(onTap: () {}, child: const Text("Settings"))
                  ])
          // suffixIcon()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  StatusPopupMenu(),
                  status(),
                ],
              ),
            ),

            //Status

            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Channel(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find Channel",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all >",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          ))
                    ],
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < 5; i++) FollowContainer(),
                      ],
                    ),
                  ),
                  //SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
      //Channels

      //find Channels

      floatingActionButton: FlottingButton(),
    );
  }
}
