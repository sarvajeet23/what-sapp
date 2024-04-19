// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:test9/data/data.dart';
import 'package:test9/utility/size_box.dart';

class SelectContact extends StatelessWidget {
  // final UserModel contact;
  const SelectContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select contact"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Inviate a friend")),
              PopupMenuItem(child: Text("Contacts")),
              PopupMenuItem(child: Text("Refresh")),
              PopupMenuItem(child: Text("Help")),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.co_present_rounded,
                      color: Colors.white,
                    ),
                    radius: 50,
                  ),
                  title: Text("New group"),
                ),
                hsize10,
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("New contact"),
                ),
                hsize10,
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.contact_mail_sharp,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("New community"),
                ),
                hsize10,
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text(
                    "Contact on WhatApp",
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                ),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Data().userData.length,
                itemBuilder: ((context, index) {
                  final kmodel = Data().userData[index];
                  return ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(kmodel.picture ?? ""),
                    ),
                    subtitle: Text(kmodel.name ?? ""),
                    trailing: Text(kmodel.status ?? ""),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
