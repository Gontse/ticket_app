import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("My tickets"),
       ),
       body: const Center(
         child: Text("Ticket info"),
       ),
       bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: Colors.blueGrey,
         unselectedItemColor: const Color(0xFF526400),
         showSelectedLabels: false,
         items: const [
           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
           activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
             label: "Home",),
           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
             activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
             label: "Home",),
           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
             activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
             label: "Home",),
           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
             activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
             label: "Home",),
         ],
       ),
     );
  }
}
