import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16,top: 24,bottom: 24),
      decoration: BoxDecoration(
          color: const Color(0xffffcd7b),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'build your career with Tharwat Samy',
                style:
                    TextStyle(fontSize: 20, color: Colors.black.withOpacity(.5)),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                )),
          ),
           Padding(
             padding: const EdgeInsets.only(right: 24),
             child: Text(
              'May21, 2022',
              style: TextStyle(color: Colors.black.withOpacity(.5)),
                     ),
           )
        ],
      ),
    );
  }
}
