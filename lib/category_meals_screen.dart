import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  CategoryMealsScreen({
    required this.categoryId,
    required this.categoryTitle,
  });

  final String categoryId;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('The Recipes For The Category'),
      ),
    );
  }
}
