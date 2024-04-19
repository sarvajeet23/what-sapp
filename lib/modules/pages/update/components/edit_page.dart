// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.clear_outlined,
                      size: 25,
                      color: Colors.white,
                    )),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.text_fields_outlined,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.color_lens,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 200),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: 380,
              child: TextField(
                maxLines: 50,
                minLines: 50,
                clipBehavior: Clip.none,
                autocorrect: true,
                enableSuggestions: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Types a Status",
                    hintStyle: TextStyle(color: Colors.white30, fontSize: 40),
                    border: InputBorder.none),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(0, 209, 50, 50),
            ),
            height: 50,
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Status (0 excluded)",
                      style: TextStyle(color: Colors.white),
                    )),
                Spacer(),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
