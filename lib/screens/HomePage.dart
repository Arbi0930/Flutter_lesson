import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learning_app_1/screens/movie_detail.dart';
import 'package:learning_app_1/screens/movies.dart';
import 'package:learning_app_1/screens/profile.dart';
import 'package:learning_app_1/screens/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 2;

  List<Widget> _TotalPage = [MoviesPage(), WishlistPage(), ProfilePage()];

  void _setCurrentIndex(int val) {
    setState(() {
      _currentindex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff36393f),
        body: SafeArea(
          child: _TotalPage[_currentindex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            onTap: _setCurrentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie,
                ),
                label: "Кино",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: "Таалагдсан",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Профайл",
              ),
            ]));
  }
}
