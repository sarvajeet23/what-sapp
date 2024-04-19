// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test9/modules/pages/status/status_update.dart';
import 'package:test9/modules/pages/update/components/perticular_persion_status.dart';

class status extends StatefulWidget {
  //int space = 0;
  status({
    super.key,
  });

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  File? _image;
  final imagerpicker = ImagePicker();

  Future imageupdate() async {
    try {
      final image = await imagerpicker.pickImage(source: ImageSource.gallery);
      setState(() {
        _image = File(image!.path);
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                    radius: 40,
                    backgroundColor: const Color.fromRGBO(255, 193, 7, 1),
                    backgroundImage: _image == null
                        ? NetworkImage(
                            "https://images.unsplash.com/photo-1712839398257-8f7ee9127998?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
                        : FileImage(_image!) as ImageProvider),
                Positioned(
                    bottom: -8,
                    right: -4,
                    child: InkWell(
                      onTap: imageupdate,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 15),
            Text(
              "My Status",
            )
          ],
        ),
        SizedBox(width: 20),

        //Second circleAvatar
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++) ParticularPersionStatus(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
