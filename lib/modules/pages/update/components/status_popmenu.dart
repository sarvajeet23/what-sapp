import 'package:flutter/material.dart';

class StatusPopupMenu extends StatelessWidget {
  const StatusPopupMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Status",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        PopupMenuButton(
            itemBuilder: (context) => [
                  PopupMenuItem(
                      onTap: () {},
                      child: const Text(
                        "Status privacy",
                      ))
                ])
        //Status privacy
      ],
    );
  }
}
