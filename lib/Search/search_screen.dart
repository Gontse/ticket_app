import 'package:flutter/material.dart';
import 'package:ticket_app/Search/Widgets/app_text_icon.dart';
import 'package:ticket_app/Search/Widgets/app_ticket_tabs.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
       const SizedBox(height: 40,),
        Text("What are\nyou looking for?", style: AppStyles.headlineStyle1.copyWith(
          fontSize: 35,
        ),),
        const SizedBox(height: 20,),
        const AppTicketTab(),
        const SizedBox(height: 30,),
        const AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
        const SizedBox(height: 20,),
        const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
      ],
      ),
    );
  }
}
