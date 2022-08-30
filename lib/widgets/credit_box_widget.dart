import 'package:demoapp/constants/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppCreditBoxWidget extends StatelessWidget {
  const AppCreditBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(10),
      ),
      child: SizedBox(
        width: size.width * 0.80,
        height: AppLayout.getHeight(155),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(12),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 2,
                spreadRadius: 3,
              ),
            ],
          ),
          padding: const EdgeInsets.all(20),
          margin: EdgeInsets.only(
            right: AppLayout.getHeight(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Credit Balance",
                    style: Styles.headLineStyle1.copyWith(color: Colors.white),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Text(
                    "2,000.00",
                    style: Styles.headLineStyle2.copyWith(
                      color: Colors.amberAccent,
                    ),
                  ),
                ],
              ),
              const Icon(
                EvaIcons.arrowheadUp,
                size: 60,
                color: Colors.white54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
