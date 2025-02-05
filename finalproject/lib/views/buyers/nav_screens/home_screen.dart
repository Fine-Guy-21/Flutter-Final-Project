import 'package:finalproject/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:finalproject/views/buyers/nav_screens/widgets/search_input.dart';
import 'package:finalproject/views/buyers/nav_screens/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child: const Column(
        children: [
          WelcomeText(),
          SizedBox(height: 10),
          SearchInputWidget(),
          SizedBox(height: 10),
          BannerWidget(),
        ],
      ),
    );
  }
}
