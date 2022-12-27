import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';



class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({Key? key,required  this.bigText,required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headerStyle2,
        ),
        InkWell(
            onTap: () {},
            child: Text(
              smallText,
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
              ),
            )),
      ],
    );
  }
}
