import 'package:dreams_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExplanationDreamWidget extends StatelessWidget {
  const ExplanationDreamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      width: double.infinity,
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
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'تفسير الحلم',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'الرموز',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'الحلم - الام - الخطوبه - البكاء',
            style: TextStyle(color: Colors.white.withOpacity(0.7)),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            ' التعبير',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'قراءة القرآن في تفسير بن سيرين والنابلسي هي الأعمال الصالحة والبر والتقوى ، وبعد هذا الشخص عن الآثام والمحرمات.فإذا رأى شخص أنه يقرأ القرأن من المصحف فهذا يدل على طهارة  صاحب الرؤية ونقاءة من الذنوب ومن الأحقاد وحبة لاوامر الله وسيرة على منهاج الله ومنهاج رسول الله (عليه الصلاة والسلام).وإذا كان يقرأ القرأن في الحلم غيباً سواءً حفظاً له في الحقيقة أو غير حافظ فهذا يدل على فعل الخير للغير وقضاء حوائجهم والأمر بالمعروف والنهي عن المنكر، مع نيل مرتبة عالية ودرجة شريفة  وعلو شأنه .',
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              wordSpacing: 0.2,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
