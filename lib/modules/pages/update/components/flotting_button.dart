import 'package:flutter/material.dart';
import 'package:test9/modules/pages/update/components/edit_page.dart';

class FlottingButton extends StatelessWidget {
  const FlottingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => EditPage()));
            },
            child: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green[900],
          child: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
