import 'package:demoapp/constants/theme.dart';
import 'package:demoapp/widgets/announcement_content_widget.dart';
import 'package:demoapp/widgets/credit_box_widget.dart';
import 'package:demoapp/widgets/header_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back!",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text("Firstname Lastname",
                            style: Styles.headLineStyle2),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset('assets/images/logo.svg'),
                    ),
                  ],
                ),
                const Gap(25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      AppCreditBoxWidget(),
                      AppCreditBoxWidget(),
                      AppCreditBoxWidget()
                    ],
                  ),
                ),
                const Gap(25),
                Container(
                  child: const AppHeaderViewWidget(
                      bigText: "Announcements", smallText: "View All"),
                ),
                const Gap(15),
                Column(
                  children: [
                    AppAnnouncementBoxWidget(),
                    AppAnnouncementBoxWidget(),
                    AppAnnouncementBoxWidget(),
                    AppAnnouncementBoxWidget(),
                    AppAnnouncementBoxWidget(),
                  ],
                ),
                const Gap(15), //sizedBox equavalent
              ],
            ),
          ),
        ],
      ),
    );
  }
}
