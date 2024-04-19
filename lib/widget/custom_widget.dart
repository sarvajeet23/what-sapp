import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget circle() => CustomCircle();

class CustomCircle extends StatelessWidget {
  double? height;
  double? width;
  Color? circlecolor;
  Widget? child;

  CustomCircle(
      {super.key, this.height, this.width, this.circlecolor, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //borderRadius: BorderRadius.circular(25),
        border: Border.all(color: circlecolor!),
      ),
    );
  }
}

BoxDecoration myDecoration() {
  return BoxDecoration(
    border: Border.all(color: Colors.green),
    borderRadius: const BorderRadius.all(Radius.circular(5)),
  );
}

Widget mytextStyle() => Container(child: Text("data"));
