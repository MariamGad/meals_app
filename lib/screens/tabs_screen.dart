import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import 'categories_screen.dart';
import 'favourites_screen.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List <Meal> favouriteMeal;
  TabsScreen(this.favouriteMeal);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Widget>> _page=[] ;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _page=[
      {
        'page': CategoriesScreen(),
        'title': Text('Category'),
      },
      {
        'page': FavouritesScreen(widget.favouriteMeal),
        'title': Text('Your Favourites'),
      },
    ];
    super.initState();
  }
  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _page[_selectedPageIndex]['title'],
      ),
      drawer: MainDrawer(),
      body: _page[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        selectedFontSize: 17.0,
        currentIndex: _selectedPageIndex,
        onTap: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            title: Text(
              'Category',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            title: Text(
              'Favourites',
            ),
          ),
        ],
      ),
    );
  }
}
