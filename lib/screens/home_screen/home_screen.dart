import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/comon/constants.dart';
import 'package:grocery_shopping_app/comon/widgets/app_bottom_nav_bar.dart';
import 'package:grocery_shopping_app/comon/widgets/grocery_search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primary,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          centerTitle: true,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Grocery',
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Badge(
                isLabelVisible: true,
                label: Text('2'),
                child: const Icon(
                  Icons.shopping_cart,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: GrocerySearchInput()
          ),
        ),
        bottomNavigationBar: AppBottomNavBar(index: 0,),
      ),
    );
  }
}
