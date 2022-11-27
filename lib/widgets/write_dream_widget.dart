import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WriteDreamWidget extends StatelessWidget {
  const WriteDreamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      color: Colors.white,
      child: Text(
        'حلمت اني دخلت كهف مقابل لبحر وكان هناك طائر يقرأ القرآن خرجت من الكهف ووجدت في طريقي زميلتي فنصحتها تذهب وتاخذه وانا ينفعها لانها مريضه بالسرطان والكبد',
        style: TextStyle(height: 1.5, wordSpacing: 1.0),
      ),
    );
  }
}
