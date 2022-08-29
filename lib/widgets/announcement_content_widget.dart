import 'package:demoapp/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppAnnouncementBoxWidget extends StatelessWidget {
  const AppAnnouncementBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(10),
        horizontal: AppLayout.getHeight(15),
      ),
      margin: EdgeInsets.only(bottom: AppLayout.getHeight(10)),
      width: AppLayout.getScreenWidth(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title 1",
            style: Styles.textStyle.copyWith(
              color: Colors.black,
            ),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
            style: Styles.textStyle.copyWith(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
