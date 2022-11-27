import 'package:dreams_app/constant.dart';
import 'package:dreams_app/pages/drawer_view.dart';
import 'package:dreams_app/component/home_page_view.dart';
import 'package:dreams_app/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/content_of_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          bulidSearchIcon(),
        ],
        title: const Text(
          'فسر حلمك',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: bulidDrawerIcon(),
      ),
      drawer: const Drawer(
        child: DrawerView(),
      ),
      body:const Padding(
        padding: const EdgeInsets.only(top: 16),
        child: HomePageView(),
      ),
    );
  }

  IconButton bulidSearchIcon() {
    return IconButton(
      onPressed: () {},
      icon: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Icon(
          Icons.search,
          color: kPrimaryColor,
          size: 32,
        ),
      ),
    );
  }

  Builder bulidDrawerIcon() {
    return Builder(builder: (BuildContext context) {
      return IconButton(
        icon: const Padding(
          padding: EdgeInsets.only(
            right: 25,
          ),
          child: Icon(
            Icons.menu,
            size: 32,
            color: kPrimaryColor,
          ),
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      );
    });
  }
}
