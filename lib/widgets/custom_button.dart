import 'package:dreams_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.textButton,
    this.onTap,
  });
  String? textButton;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              kPrimaryColor,
              kPrimaryColor,
              Colors.pink,
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: Text(
            textButton!,
            style: const TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
