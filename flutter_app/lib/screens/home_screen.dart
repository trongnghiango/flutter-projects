import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/ticket_view.dart';
import 'package:flutter_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // margin: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const Gap(40), // col 1: below
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning",
                          style: Styles.headLineStyle3
                        ),
                        const Gap(5),
                        Text("Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img_1.png"),
                          ),
                        )
                    )
                  ],
                ),
                const Gap(25),  // col 2 below include search section
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                        size: 32,
                      ),
                      const Gap(10),
                      Text("Search",
                        style: Styles.headLineStyle3,
                      )
                    ],
                  ),
                ),
                const Gap(40), // col 3 contain  coming flights
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                        onTap: (){
                          print("You are tapped!");
                        },
                        child: Text(
                          "View all",
                          style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                        )
                    ),
                  ],
                ),
                const Gap(16),
                const TicketView(),

              ],
            ),

          ),
          Container(
            child: const Text("Hello"),
          ),
        ],
      ),
    );
  }
}
