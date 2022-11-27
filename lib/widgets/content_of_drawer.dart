import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class ContentOfDrawer extends StatelessWidget {
  ContentOfDrawer({
    required this.icon,
    required this.text,
  });
  Icon icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 20,
          ),
          Text('$text'),
        ],
      ),
    );
  }
}
