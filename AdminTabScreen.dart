import 'package:edumateapp/AdminScreen/AdminNotification.dart';
import 'package:edumateapp/AdminScreen/AdminProfile.dart';
import 'package:edumateapp/Data/AdminData.dart';
import 'package:edumateapp/AdminScreen/AdminHome.dart';
import 'package:edumateapp/Widgets/CustomNavigationBar.dart';
import 'package:flutter/material.dart';

// tab at the bottom

class AdminTabScreen extends StatefulWidget {
  const AdminTabScreen({Key? key}) : super(key: key);
  @override
  AdminTabScreenState createState() => AdminTabScreenState();
}

class AdminTabScreenState extends State<AdminTabScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const AdminHome(),
      const AdminHome(),
      const AdminNotification(),
      const AdminProfile(),
    ];

    return Scaffold(
      body: pages[_selectedPageIndex],
      bottomNavigationBar: CustomNavigationBar(
        selectedIndex: _selectedPageIndex,
        onItemTapped: _selectPage,
      ),
    );
  }
}