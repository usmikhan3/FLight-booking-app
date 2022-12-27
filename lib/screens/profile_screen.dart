import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(25)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10),
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headerStyle1,
                  ),
                  Gap(
                    AppLayout.getHeight(2),
                  ),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(
                    AppLayout.getHeight(8),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(100),
                        ),
                        color: const Color(0xFFFEF4F3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "Edit",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      )),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                ),
              ),
              Positioned(
                right: AppLayout.getHeight(-45),
                top: AppLayout.getHeight(-40),
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: Color(0xFF264CD2),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getWidth(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new reward",
                          style: Styles.headerStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headerStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          Gap(AppLayout.getHeight(25)),

          Text("Accumulated miles",style: Styles.headerStyle2,),
          Gap(AppLayout.getHeight(35)),

          Container(
            child: Column(
              children: [
                Text("197208",style: Styles.headerStyle1.copyWith(fontSize:AppLayout.getHeight(45),),),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued",style: Styles.headerStyle4.copyWith(fontSize: 16),),
                    Text("23 May 2022",style: Styles.headerStyle4.copyWith(fontSize: 16),),
                  ],
                ),

                Gap(AppLayout.getHeight(25)),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(text1: "23 042", text2: "Miles", isColor: true,),
                    AppColumnLayout(text1: "Airline Co", text2: "Received fom", isColor: true,crossAxisAlignment: CrossAxisAlignment.end,),
                  ],
                ),

                Gap(AppLayout.getHeight(25)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(text1: "24", text2: "Miles", isColor: true,),
                    AppColumnLayout(text1: "McDonald's", text2: "Received from", isColor: true,crossAxisAlignment: CrossAxisAlignment.end,),
                  ],
                ),

                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(text1: "54 340", text2: "Miles", isColor: true,),
                    AppColumnLayout(text1: "Exuma", text2: "Received from", isColor: true,crossAxisAlignment: CrossAxisAlignment.end,),
                  ],
                ),

                Gap(AppLayout.getHeight(25)),
                InkWell(
                    onTap: (){},
                    child: Text("How to get more miles", style: Styles.textStyle.copyWith(color:Styles.primaryColor),)),



              ],
            ),
          ),

        ],
      ),
    );
  }
}
