import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem({
    required this.title,
    required this.color,
  });
  void _selectCategory(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder:(_){
      return CategoryMealsScreen();
    },),);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>_selectCategory(context),
      borderRadius:BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
