import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/double_text_widget.dart';
import 'package:book_tickets/widgets/icon_text_widget.dart';
import 'package:book_tickets/widgets/tickcets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(10),
        ),
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        children: [
          Gap(AppLayout.getHeight(50)),
          Text(
            "What are\nyou looking for?",
            style:
                Styles.headerStyle1.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),

          //TODO: AIRLINE AND HOTEL TAB
          const AppTicketsTabs(firstTab: "Airline Tickets",secondTab:"Hotels" ,),

          Gap(AppLayout.getHeight(25)),

          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),

          Gap(AppLayout.getHeight(20)),

          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),

          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(13),
              vertical: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
            child: Center(
              child: Text(
                "find tickets",
                style: Styles.textStyle
                    .copyWith(color: Colors.white, fontSize: 22),
              ),
            ),
          ),

          Gap(AppLayout.getHeight(40)),

          //TODO:// UPCOMING FLIGHTS HEADING
          const AppDoubleTextWidget(
            bigText: "Upcoming Flights",
            smallText: "View All",
          ),

          Gap(AppLayout.getHeight(15)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //TODO: LONG CONTAINER WITH IMAGE AND TEXT
              Container(
                height: AppLayout.getHeight(420),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit.jpg",
                          ),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance.",
                      style: Styles.headerStyle2.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(25),),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headerStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(10),),

                            Text(
                              "Take the survey about our services and get discount.",
                              style: Styles.headerStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),


                      Positioned(
                        top: AppLayout.getHeight(-40),
                        right: AppLayout.getHeight(-45),
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF189999),
                              width: 18,
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getHeight(10),),
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text("Take love",
                          textAlign: TextAlign.center,
                          style: Styles.headerStyle2
                              .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                          ),
                        ),

                        Gap(AppLayout.getHeight(5)),

                        RichText(
                          text:  TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: AppLayout.getHeight(35)),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: AppLayout.getHeight(45)),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: AppLayout.getHeight(35)),
                              ),
                            ]
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
