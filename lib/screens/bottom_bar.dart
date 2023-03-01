import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticketbooking/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
   setState(() {
      _selectedIndex = index;
   });
  }

  static final List<Widget> _widgetsOptions = <Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ticket Booking",
        ),
      ),
      body: Center(child: _widgetsOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap:_onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile")
        ],
      ),
    );
  }
}
