import 'package:dreams_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExplanationComments extends StatelessWidget {
  ExplanationComments(
      {required this.textComment, required this.textAppInterpreter});
  String textAppInterpreter;
  String textComment;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 10,
            ),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kPrimaryColor,
                  kPrimaryColor,
                  Colors.pink,
                ],
              ),
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Text(
                'فسر حلمك',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    child: Text(
                      textAppInterpreter,
                      style: const TextStyle(
                        height: 1.5,
                        wordSpacing: 1.0,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    textComment,
                    style: const TextStyle(height: 1.5, wordSpacing: 1.0),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
