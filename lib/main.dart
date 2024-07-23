 import 'package:flutter/material.dart';
import 'package:ticket_app/screens/all_tickets.dart';
import 'Core/Widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
      routes: {
        "all_tickets": (context) => const AllTickets()
      },
    );
  }
}