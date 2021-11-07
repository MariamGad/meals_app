import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTitle(IconData icon, String text, Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120.0,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            Icons.restaurant,
            'Meal',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTitle(
            Icons.settings,
            'Filters',
            () {
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
