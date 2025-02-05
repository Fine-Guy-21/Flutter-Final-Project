import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:finalproject/views/buyers/nav_screens/category_screen.dart';
import 'package:finalproject/views/buyers/nav_screens/home_screen.dart';
import 'package:finalproject/views/buyers/nav_screens/search_screen.dart';
import 'package:finalproject/views/buyers/nav_screens/store_screen.dart';
import 'package:finalproject/views/buyers/nav_screens/cart_screen.dart';
import 'package:finalproject/views/buyers/nav_screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const StoreScreen(),
    const CartScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        
        onTap: (int index) {
          setState(() {
            _pageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/home.svg', width: 20),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/explore.svg', width: 20),
              label: 'Catagories'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/shop.svg', width: 20),
              label: 'Store'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/cart.svg', width: 20),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/search.svg', width: 20),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/account.svg', width: 20),
              label: 'Profile'),
        ],
        selectedItemColor: Colors.yellow.shade900,
        unselectedItemColor: Colors.black,
      ),
      body: _screens[_pageIndex],
    );
  }
}
