import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test9/utility/size_box.dart';
import 'package:test9/widget/aapbutton.dart';
import 'package:test9/widget/custom_widget.dart';

class Communication extends StatefulWidget {
  const Communication({super.key});

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Communities",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          AapBarButton(),
          PopupMenuButton(
              position: PopupMenuPosition.under,
              itemBuilder: (context) => [PopupMenuItem(child: Text("Setting"))])
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                height: 200,
                width: 400,
                child: Image.asset("images/WhatAap_Icons.png"),
              ),
              const SizedBox(
                  height: 150,
                  width: 350,
                  child: Column(
                    children: [
                      Text(
                        "Stay connected with a community",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: SizedBox(
                          width: 300,
                          height: 200,
                          child: Text(
                              "Communities bring member together in topic-based group,and make it easy to get admin announcements. Any community you're added to will appear here."),
                        ),
                      ),
                    ],
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See example communities >",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  )),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green)),
                    onPressed: () {},
                    child: const Text(
                      "Start your community",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ),
              hsize60,
              Text("Hello"),
              ..._number()
            ],
          ),
        ),
      ),
    );
  }
}

List<Text> _number() {
  return List.generate(3, (index) => Text("data"));
}
