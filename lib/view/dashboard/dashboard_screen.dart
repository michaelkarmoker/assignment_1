import 'dart:async';
import 'dart:io';
import 'package:assignment_1/view/dashboard/widget/bottom_nav_item.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

import '../../util/colors.dart';
import '../home/home_screen.dart';




class DashboardScreen extends StatefulWidget {
  final int pageIndex;
  DashboardScreen({required this.pageIndex});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController? _pageController;

  int _pageIndex = 0;
  List<Widget> _screens=[];


  @override
  void initState() {
    super.initState();

    _pageIndex = widget.pageIndex;

    _pageController = PageController(initialPage: widget.pageIndex);

    _screens = [
      HomeScreen(),


    ];

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: SafeArea(

        child: Container(
          decoration: BoxDecoration(
              color: navBarBgColor,
            borderRadius: BorderRadius.circular(50),

          ),

          height: 56,
          margin: EdgeInsets.only(left: 24,right: 24,bottom: 10),
          padding: EdgeInsets.all(0),
          child: Row(children: [
            BottomNavItem(iconData: "assets/icon/home.png", isSelected: _pageIndex == 0, onTap: () => _setPage(0),   ),
            BottomNavItem(iconData: "assets/icon/device.png", isSelected: _pageIndex == 1, onTap: null  ),
            BottomNavItem(iconData: "assets/icon/download.png", isSelected: _pageIndex == 2, onTap: null   ),
            BottomNavItem(iconData: "assets/icon/profile.png", isSelected: _pageIndex == 3, onTap: null  ),


          ]),
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _screens.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _screens[index];
        },
      ),
    );
  }

  void _setPage(int pageIndex) {

    setState(() {
      _pageController!.jumpToPage(pageIndex);
      _pageIndex = pageIndex;
    });
  }
}