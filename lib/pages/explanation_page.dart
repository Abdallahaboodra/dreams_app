import 'package:dreams_app/constant.dart';
import 'package:dreams_app/widgets/custom_container_widget.dart';
import 'package:dreams_app/widgets/explaination_comments.dart';
import 'package:dreams_app/widgets/explanation_dream_widget.dart';
import 'package:dreams_app/widgets/write_dream_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExplanationPage extends StatelessWidget {
  const ExplanationPage({super.key});
  static String id = 'ExpalnationPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: arrowBackIcon(context),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'خطوبة ',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            const CustomContainerWidget(),
            const WriteDreamWidget(),
            Container(
              height: 20,
              color: Color(0xffF2F2F2),
            ),
            const ExplanationDreamWidget(),
            const Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 35,
              ),
              child: Text(
                'التعليقات',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            ExplanationComments(
              textAppInterpreter: '',
              textComment:
                  'وعليكم السلام ورحمه الله وبركاته شكرا جزيلا لكم انا كنت قد صليت استخاره قبل الحلم من اجل موضوع زواج.فهل للحلم دلاله معينه',
            ),
            ExplanationComments(
              textAppInterpreter: 'مفسر تطبيق فسر حلمك',
              textComment:
                  'نعم قد يكون الحلم اشاره الي الزواج حيث انه من الامور المفرحه بكل تاكيد.والله اعلي واعلم',
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 18,
                bottom: 35,
              ),
              child: Text(
                'ان كنت ترغب بالتعليق رجاء تسجيل الدخول',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ));
  }

  IconButton arrowBackIcon(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: kPrimaryColor,
        size: 28,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
