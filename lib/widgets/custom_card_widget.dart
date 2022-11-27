import 'package:dreams_app/constant.dart';
import 'package:dreams_app/pages/explanation_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/dream_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard();
  List<DreamModel> listDream = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        right: 12,
        left: 12,
      ),
      child: GestureDetector(
        onTap: (() => Navigator.pushNamed(context, ExplanationPage.id)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.1),
                blurRadius: 1,
                offset: Offset(0, 1),
              )
            ],
          ),
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            margin: const EdgeInsets.only(
              right: 3,
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Expanded(
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
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.question_mark,
                              size: 15,
                            ),
                             Text('سريع'),
                            const SizedBox(
                              width: 15,
                            ),
                            const Padding(
                              padding: const EdgeInsets.only(
                                bottom: 7,
                              ),
                              child: Icon(
                                Icons.date_range,
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                             Text('02:48 2022-06-25')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                         Text(
                          'حلمت اني دخلت كهف مقابل لبحر وكان هناك طائر يقرأ القرآن خرجت من الكهف ووجدت في ط',
                          style: TextStyle(
                            fontSize: 16,
                            wordSpacing: 0.2,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.remove_red_eye,
                    size: 16,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      '4814',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
