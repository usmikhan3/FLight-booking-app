import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/tickcets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            physics:const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics()
            ),
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(20)),
              Text(
                "Tickets",
                style: Styles.headerStyle1,
              ),
              Gap(AppLayout.getHeight(30)),
              const AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(30)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  tickets: ticketList[0],
                  isColor: true,
                ),
              ),
              Gap(AppLayout.getHeight(1)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15)),
                margin:  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          text1: "Flutter D8",
                          text2: "Passenger",
                          isColor: false,
                        ),
                        AppColumnLayout(
                          text1: "5221 478566",
                          text2: "Passport",
                          crossAxisAlignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(24),
                      child: const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          text1: "0055 444 77147",
                          text2: "Number of E-ticket",
                          isColor: false,
                        ),
                        AppColumnLayout(
                          text1: "B2SG2B",
                          text2: "booking code",
                          crossAxisAlignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(24),
                      child: const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " **** 2457",
                                  style: Styles.headerStyle3,
                                )
                              ],
                            ),
                            Gap(5),
                            Text(
                              "Payment method",
                              style: Styles.headerStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          text1: "\$499.5",
                          text2: "Price",
                          isColor: false,
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(10),
                      child: const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                    ),
                  ],
                ),
              ),

              //TODO: barcode

              Container(
                padding: EdgeInsets.only(top: AppLayout.getHeight(15), bottom: AppLayout.getHeight(15),left: AppLayout.getHeight(15), right: AppLayout.getHeight(15)),
                margin:  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(12)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(12)),
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: 'https://github.com/usmikhan3',
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),

              Gap(AppLayout.getHeight(20)),

              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  tickets: ticketList[0],

                ),
              ),


            ],
          ),

          Positioned(
            left: AppLayout.getHeight(27),
            top:  AppLayout.getHeight(300),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,

              ),
            ),
          ),

          Positioned(
            right: AppLayout.getHeight(27),
            top:  AppLayout.getHeight(300),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
