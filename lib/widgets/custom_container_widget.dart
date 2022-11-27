import 'dart:ui';

import 'package:dreams_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 25,
        right: 12,
        left: 12,
      ),
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'حلمت بطائر يقرا القرآن',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.remove_red_eye,
                  size: 18,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                '4814',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.date_range,
                  size: 16,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('02:48 2022-06-25'),
              Icon(Icons.question_mark),
              Text('سريع'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    'الحاله الاجتماعيه:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'متزوجه ',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'العمر:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Text(
                'من 40 الي 60  ',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
