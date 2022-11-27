import 'package:dreams_app/component/home_page_list_view.dart';
import 'package:dreams_app/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: HomePageListView()),
        CustomButton(
          onTap: (){},
          textButton: '+ فسر حلمك الان',
        ),
      ],
    );
  }
}
