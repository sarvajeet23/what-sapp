import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test9/data/data.dart';
import 'package:test9/utility/size_box.dart';

class CallAdd extends StatelessWidget {
  const CallAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select contact"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(),
              child: Center(
                child: Text(
                  "Add up to 31 people",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.attachment_outlined,
                      color: Colors.white,
                    ),
                    radius: 30,
                  ),
                  title: Text("New call link"),
                ),
              ],
            ),
          ),
          hsize30,
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 30,
              child: Icon(
                Icons.person_add_outlined,
                color: Colors.white,
              ),
            ),
            title: Text("New contact"),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
          ),
          hsize30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Frequently contaced",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          hsize20,
          ListTile(
            leading: CircleAvatar(radius: 30),
            title: Text("Name"),
          ),
          hsize20,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Contacts on WhatApp", style: TextStyle(fontSize: 16)),
          ),
          hsize20,
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                physics: SingleChildScrollView().physics,
                itemCount: Data().userData.length,
                itemBuilder: (context, index) {
                  final model = Data().userData[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(model.picture ?? ""),
                      ),
                      title: Text(model.name ?? ""),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
