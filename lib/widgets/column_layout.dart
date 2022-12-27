import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final String text1;
  final String text2;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool? isColor;
  const AppColumnLayout(
      {Key? key,
      required this.text1,
      required this.text2,
      this.crossAxisAlignment,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment == null
          ? CrossAxisAlignment.start
          : crossAxisAlignment!,
      children: [
        Text(
          text1,
          style: isColor == null
              ? Styles.headerStyle3.copyWith(color: Colors.white)
              : Styles.headerStyle3,
        ),
        Gap(AppLayout.getHeight(3)),
        Text(
          text2,
          style: isColor == null
              ? Styles.headerStyle4.copyWith(color: Colors.white)
              : Styles.headerStyle4,
        ),
      ],
    );
  }
}
//style:isColor==null ? Styles.headerStyle3
//                                 .copyWith(color: Colors.white) :
//                             Styles.headerStyle3,
