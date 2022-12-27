import 'package:book_tickets/screens/hotel_screen.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        children: [
          //TODO: MAIN TOP CONTAINER
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                //TODO:// TOP HEADING
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headerStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headerStyle1,
                        ),
                      ],
                    ),

                    //ICON

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png")),
                      ),
                    ),
                  ],
                ),

                const Gap(25),
                //TODO:// M SEARCH FIELD
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                        size: 20,
                      ),
                      const Gap(3),
                      Text(
                        "Search",
                        style: Styles.headerStyle4,
                      ),
                    ],
                  ),
                ),

                const Gap(40),
                //TODO:// UPCOMING FLIGHTS HEADING

                const AppDoubleTextWidget(
                  bigText: "Upcoming Flights",
                  smallText: "View All",
                ),
              ],
            ),
          ),

          const Gap(15),

          //TODO: TICKETS VIEW

          const Gap(8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics()),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(tickets: ticket))
                  .toList(),
            ),
          ),

          const Gap(5),
          //TODO:HOTEL HEADING

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:  const AppDoubleTextWidget(
              bigText: "Hotels",
              smallText: "View All",
            ),
          ),

          const Gap(5),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics()),
            child: Row(
              children:
                  hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
