import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/user_model.dart';
import 'package:flutter_facebook/screens/home_screen.dart';
import 'package:flutter_facebook/widgets/responsive.dart';

import 'custom_appbar.dart';
import 'custom_nav_bar.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> widgets = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.account_circle_outlined,
    Icons.menu,
  ];
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: icons.length,
      child: Scaffold(
        appBar: Responsive.isDestop(context)
            ? PreferredSize(
                child: CustomAppBar(
                  currentUser: currentUser,
                  icons: icons,
                  selectedIndex: _selectIndex,
                  onTap: (index) => setState(() => _selectIndex = index),
                ),
                preferredSize: Size(size.width, 100))
            : null,
        body: IndexedStack(
          index: _selectIndex,
          children: widgets,
        ),
        bottomNavigationBar: !Responsive.isDestop(context)
            ? Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: CustomTabBar(
                  icons: icons,
                  selectedIndex: _selectIndex,
                  onTap: (index) => setState(() => _selectIndex = index),
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }
}
