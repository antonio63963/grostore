// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:grocery_shopping_app/comon/styles.dart';

class IntroButtonSection extends StatelessWidget {
  final Function() onAuthButton;
  final Function() onGuestButton;
  const IntroButtonSection({
    super.key,
    required this.onAuthButton,
    required this.onGuestButton,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 48,
      left: 16,
      right: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FilledButton(
            onPressed: onAuthButton,
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
            ),
            child: const Text(
              'Login or Register',
              style: MyStyles.buttonTextWhite,
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: onGuestButton,
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
              // side: BorderSide(
              //   color: colorScheme.background,
              //   width: 2,
              // ),
            ),
            child: const Text(
              'Shop as Guest',
              style: MyStyles.buttonTextWhite,
            ),
          ),
        ],
      ),
    );
  }
}
