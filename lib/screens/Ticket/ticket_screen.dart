import 'package:flutter/material.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';
import 'package:ticket_app/screens/Search/Widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "Tickets",
            style: AppStyles.headlineStyle1,
          ),
          SizedBox(height: 20,),
          Row(children: [
            const AppTabs(tabText: "All Tickets", isTabSelected: true),
            const AppTabs(tabText: "Hotel", tabBorder: true,),
          ],)

        ],
      ),
    );
  }
}
