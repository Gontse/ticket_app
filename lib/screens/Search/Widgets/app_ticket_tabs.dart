import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  const AppTicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xFFF4F6FD)),
      child: const Row(
        children: [
          AppTabs(
            tabText: "Airline Tickets",
          ),
          AppTabs(
            tabText: "Accommodations",
            tabBorder: true,
            isTabSelected: true
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool isTabSelected;

  const AppTabs({super.key,
    this.tabText = "",
    this.tabBorder = false, this.isTabSelected = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: isTabSelected ? Colors.transparent : Colors.white,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabText)),
    );
  }
}