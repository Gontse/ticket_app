import 'package:flutter/material.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "Tickets",
            style: AppStyles.headlineStyle1,
          )
        ],
      ),
    );
  }
}
