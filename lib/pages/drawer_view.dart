import 'package:dreams_app/constant.dart';
import 'package:dreams_app/widgets/content_of_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_page.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  kPrimaryColor,
                  kPrimaryColor,
                  Colors.pink,
                ])),
          ),
        ),
        GestureDetector(
          child: ContentOfDrawer(
            icon: const Icon(Icons.home),
            text: 'الرئيسيه',
          ),
          onTap: () {
            Navigator.pushNamed(context, HomePage.id);
          },
        ),
        ContentOfDrawer(
          icon: const Icon(Icons.lock),
          text: 'تسجيل الدخول',
        ),
        ContentOfDrawer(
          icon: const Icon(Icons.add),
          text: 'فسر حلمك',
        ),
        ContentOfDrawer(
          icon: const Icon(Icons.article_outlined),
          text: 'مقالات',
        ),
        ContentOfDrawer(
          icon: const Icon(Icons.mark_as_unread),
          text: 'عن التطبيق',
        ),
        ContentOfDrawer(
          icon: const Icon(Icons.email),
          text: 'اتصل بنا',
        ),
        Divider(color: Colors.black.withOpacity(0.2))
      ],
    );
  }
}
