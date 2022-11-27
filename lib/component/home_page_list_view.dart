import 'package:dreams_app/widgets/custom_card_widget.dart';
import 'package:flutter/cupertino.dart';

class HomePageListView extends StatelessWidget {
  const HomePageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CustomCard();
      },
    );
  }
}
