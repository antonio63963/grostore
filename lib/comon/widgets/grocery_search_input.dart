import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/comon/constants.dart';

class GrocerySearchInput extends StatelessWidget {
  const GrocerySearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        bottom: 16,
        right: 16,
        top: 8,
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search, color: MyColors.primary),
          hintText: 'Search',
          hintStyle: TextStyle(color: MyColors.primary),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 124, 169, 228),
        ),
      ),
    );
  }
}
