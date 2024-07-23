import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final VoidCallback onClick;

  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText,
    required this.onClick });

  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headlineStyle2),
        InkWell(
          onTap: onClick,
          child: Text(smallText, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          )) ,
        )
      ],
    );
  }
}