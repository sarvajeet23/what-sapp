// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ParticularPersionStatus extends StatelessWidget {
  const ParticularPersionStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.pink,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Text("Mukesh")
      ],
    );
  }
}
