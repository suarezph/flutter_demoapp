import 'package:demoapp/constants/theme.dart';
import 'package:demoapp/modules/dashboard/screen/dashboard_filter_screen.dart';
import 'package:flutter/material.dart';

class AppHeaderViewWidget extends StatelessWidget {
  final String bigText;
  final String? smallText;
  const AppHeaderViewWidget({
    Key? key,
    required this.bigText,
    this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle3,
        ),
        if (smallText != null)
          InkWell(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                isDismissible: true,
                enableDrag: false,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.0))),
                context: context,
                builder: (BuildContext context) =>
                    const DashboardFilterScreen(),
              );
            },
            child: Text(
              smallText!,
              style: Styles.headLineStyle4.copyWith(
                color: Styles.primaryColor,
              ),
            ),
          )
      ],
    );
  }
}
