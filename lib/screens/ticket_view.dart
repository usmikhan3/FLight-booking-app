// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  final bool? isColor;
  const TicketView({
    Key? key,
    required this.tickets, this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true? 163 : 169),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16),
        ),
        child: Column(
          children: [
            //TODO: THE PURPLE PART OF THE TICKET
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    AppLayout.getHeight(20),
                  ),
                  topRight: Radius.circular(
                    AppLayout.getHeight(20),
                  ),
                ),
                color:isColor==null ?  const Color(0xFF526799) : Colors.white,
              ),
              padding: EdgeInsets.all(
                AppLayout.getHeight(16),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        tickets["from"]["code"],
                        style:
                        isColor==null ?   Styles.headerStyle3.copyWith(color: Colors.white)
                        : Styles.headerStyle3,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ThickContainer(isColor: true,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const AppLayoutBuilderWidget(
                                sections: 6,

                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child:  Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor==null ?  Colors.white : Color(0xFF8ACCF7),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(isColor: true,),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        tickets["to"]["code"],
                        style:
                        isColor==null ?   Styles.headerStyle3.copyWith(color: Colors.white) :
                        Styles.headerStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          tickets["from"]["name"],
                          style:
                          isColor==null ?      Styles.headerStyle4.copyWith(color: Colors.white) :
                          Styles.headerStyle4,
                        ),
                      ),
                      Text(
                        tickets["flying_time"],
                        style:
                        isColor==null ?      Styles.headerStyle4.copyWith(color: Colors.white) :
                        Styles.headerStyle4.copyWith(color: Colors.black, fontSize:16 ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          tickets["to"]["name"],
                          textAlign: TextAlign.end,
                          style:
                          isColor==null ?      Styles.headerStyle4.copyWith(color: Colors.white) :
                          Styles.headerStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //TODO: THE ORANGE TOP PART OF THE TICKET
            Container(
              color: isColor==null ?  Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child:  DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null ?  Colors.grey.shade200 : Colors.white,
                        borderRadius:const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(6.0)),
                      child:AppLayoutBuilderWidget(
                        sections: 15,

                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child:  DecoratedBox(
                      decoration: BoxDecoration(
                        color:  isColor==null ?  Colors.grey.shade200 : Colors.white,
                        borderRadius:const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //TODO: THE ORANGE BOTTOM PART OF THE TICKET

            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(16),
                top: AppLayout.getHeight(10),
                right: AppLayout.getHeight(16),
                bottom: AppLayout.getHeight(16),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                   AppLayout.getHeight( isColor== null ?  21 : 0) ,
                  ),
                  bottomRight: Radius.circular(
                    AppLayout.getHeight(isColor== null ?  21 : 0),
                  ),
                ),
                color:isColor==null ? Styles.orangeColor : Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      AppColumnLayout(text1: tickets["date"], text2: "Date",isColor: isColor,),
                      AppColumnLayout(text1: tickets["departure_time"], text2:  "Departure time",isColor: isColor,crossAxisAlignment: CrossAxisAlignment.center,),



                     /* Column(
                        children: [
                          Text(
                            tickets["departure_time"],
                            style:isColor==null ? Styles.headerStyle3
                                .copyWith(color: Colors.white) :
                            Styles.headerStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style:isColor==null ? Styles.headerStyle4
                                .copyWith(color: Colors.white) :
                            Styles.headerStyle4,
                          ),
                        ],
                      ),*/

                      AppColumnLayout(text1: tickets["number"].toString(), text2:  "Number",isColor: isColor,crossAxisAlignment: CrossAxisAlignment.end,),
                      /*Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            tickets["number"].toString(),
                            style:isColor==null ? Styles.headerStyle3
                                .copyWith(color: Colors.white) :
                            Styles.headerStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style:isColor==null ? Styles.headerStyle4
                                .copyWith(color: Colors.white) :
                            Styles.headerStyle4,
                          ),
                        ],
                      ),*/
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
