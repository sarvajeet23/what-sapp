// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test9/utility/size_box.dart';

class Channel extends StatelessWidget {
  const Channel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Chennals",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            //IconButton(onPressed: () {}, icon: Icon(Icons.add))
            PopupMenuButton(
                position: PopupMenuPosition.under,
                icon: Icon(Icons.add),
                itemBuilder: (context) => [
                      PopupMenuItem(
                          child: Text(
                        "Create channel",
                      )),
                      PopupMenuItem(
                          child: Text(
                        "Find channels",
                      ))
                    ])
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://akm-img-a-in.tosshub.com/indiatoday/2022-12/Cover-road-to-2024.jpg?VersionId=S8s_v0jOM_926lHCfHN6wGAuQfN0.vF0&size=303:404",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              children: const [
                Text(
                  "India Today",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  "PM",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text("7:52 pm"),
                hsize22,
                CircleAvatar(
                  minRadius: min(10, 10),
                  backgroundColor: Colors.green,
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
