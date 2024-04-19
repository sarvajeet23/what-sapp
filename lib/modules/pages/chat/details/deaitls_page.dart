// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test9/model/usermodel.dart';
import 'package:test9/widget/suffixIcon.dart';

class DeatialPage extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  final UserModel deatialUser;

  DeatialPage({super.key, required this.deatialUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 82,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
              InkWell(
                onTap: () {},
                child: CircleAvatar(
                  backgroundImage: NetworkImage(deatialUser.picture.toString()),
                  radius: 25,
                ),
              )
            ],
          ),
        ),
        titleSpacing: 8,
        title: Text(deatialUser.name ?? ""),
        actions: [suffixIcon()],
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: const Color.fromARGB(255, 244, 238, 245),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        height: 60,
                        child: TextField(
                          controller: textController,
                          decoration: InputDecoration(
                              label: Text("massages"),
                              prefix: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.emoji_emotions)),
                              suffixIcon: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.attach_file_outlined)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.currency_rupee_outlined)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.camera_alt_outlined)),
                                ],
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Container(
                                  color: Colors.amber,
                                  height: 200,
                                  width: 200,
                                  child: Hero(
                                    tag: "Backgroung",
                                    child: Image.network(
                                      "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",
                                      width: 150,
                                      height: 150,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.mic,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


//Widget bg