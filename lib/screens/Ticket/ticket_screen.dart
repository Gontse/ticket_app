import 'package:flutter/material.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        Text("Tickets", style: AppStyles.headlineStyle1,)
        ],
      ),
    );
  }
}
