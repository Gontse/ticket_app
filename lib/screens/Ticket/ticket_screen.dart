import 'package:flutter/material.dart';
import 'package:ticket_app/Core/Widgets/Utils/TestData/all_json.dart';
import 'package:ticket_app/Core/Widgets/ticket_view.dart';
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
          const SizedBox(
            height: 20,
          ),
           Row(
            children: [
              const AppTabs(tabText: "Upcoming", isTabSelected: true),
              const AppTabs(tabText: "Previous", tabBorder: true,
              ),

            ],
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0], isColor: true,),

          ),
        ],
      ),
    );
  }
}
