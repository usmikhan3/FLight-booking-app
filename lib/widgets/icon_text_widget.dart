import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key,required this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(10),
        vertical: AppLayout.getHeight(10),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
      child: Row(
        children: [
           Icon(
           icon,
            color:const Color(0xFF8FC2DF),
          ),
          Gap(10),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
