import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/comon/constants.dart';

class HeaderIntro extends StatelessWidget {
  const HeaderIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color.fromRGBO(0, 0, 0, .50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Grostore',
            style: textTheme.displayLarge!.copyWith(
              color: MyColors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Make your grocery shopping with our user-friendly App. Say goodbye to long lines and make your next grocery trip easier than ever.',
            style: textTheme.bodyMedium?.copyWith(
              color: MyColors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
