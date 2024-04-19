import 'package:flutter/material.dart';

class FollowContainer extends StatelessWidget {
  const FollowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.amber,
                  ),
                ),
                Positioned(
                    bottom: -8,
                    right: -4,
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
                    ))
              ],
            )),
            SizedBox(height: 10),
            Text("WhatApp"),
            SizedBox(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
