// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:test9/modules/pages/chat/components/select_contact.dart';
import 'package:test9/data/data.dart';
import 'package:test9/modules/pages/chat/details/deaitls_page.dart';
import 'package:test9/utility/size_box.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

// getImage(Source:ImageSource)
class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.green[900],
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.green),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          PopupMenuButton(
              iconColor: Colors.black,
              position: PopupMenuPosition.under,
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text("New grop")),
                    PopupMenuItem(child: Text("New broadcast")),
                    PopupMenuItem(child: Text("Linked devices")),
                    PopupMenuItem(child: Text("Starred messages")),
                    PopupMenuItem(child: Text("Payments")),
                    PopupMenuItem(child: Text("Settings")),
                  ])
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.brown[50],
                    borderRadius: BorderRadius.circular(35)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      hintStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                      border: InputBorder.none),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Data().userData.length,
                  itemBuilder: (context, index) {
                    final model = Data().userData[index];
                    return Container(
                      decoration: BoxDecoration(),
                      child: Contacts(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(model.picture ?? ""),
                        ),
                        title: model.name ?? "",
                        subicon: Text(model.icon ?? ""),
                        subtitle: Text(model.address ?? ""),
                        trialing: Text(model.status ?? ""),
                        onTp: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DeatialPage(
                                    deatialUser: model,
                                  )));
                        },
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SelectContact()));
        },
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add_comment_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  Widget leading;
  String title;
  Widget? subicon;
  Widget subtitle;
  Widget trialing;
  VoidCallback onTp;

  Contacts(
      {super.key,
      required this.leading,
      required this.title,
      required this.subtitle,
      this.subicon,
      required this.trialing,
      required this.onTp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: onTp,
        child: Row(
          children: [
            InkWell(onTap: onTp, child: leading),
            wsize10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Row(
                  children: [subicon ?? SizedBox(), wsize5, subtitle],
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: trialing,
            )
          ],
        ),
      ),
    );
  }
}
