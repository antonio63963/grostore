// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/comon/constants.dart';

class AppBottomNavBar extends StatelessWidget {
  final int index;
  const AppBottomNavBar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStatePropertyAll(
            Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: MyColors.white),
          ),
        ),
        child: NavigationBar(
          backgroundColor: MyColors.primary,
          // height: 50,
          selectedIndex: index,
          indicatorColor: Colors.transparent,
          destinations: const [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: NavigationDestination(
                selectedIcon: Icon(Icons.home, color: MyColors.white),
                icon: Icon(Icons.home_outlined, color: MyColors.white),
                label: 'Home',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: NavigationDestination(
                selectedIcon: Icon(Icons.shopping_bag, color: MyColors.white),
                icon: Icon(Icons.shopping_bag_outlined, color: MyColors.white),
                label: 'Browse',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: NavigationDestination(
                selectedIcon: Icon(Icons.qr_code, color: MyColors.white),
                icon: Icon(Icons.qr_code_outlined, color: MyColors.white),
                label: 'Home',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: NavigationDestination(
                selectedIcon: Icon(Icons.history, color: MyColors.white),
                icon: Icon(Icons.history_outlined, color: MyColors.white),
                label: 'Home',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: NavigationDestination(
                selectedIcon: Icon(Icons.person, color: MyColors.white),
                icon: Icon(Icons.person_2_outlined, color: MyColors.white),
                label: 'Home',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
