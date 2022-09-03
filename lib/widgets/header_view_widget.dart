import 'package:demoapp/constants/theme.dart';
import 'package:flutter/material.dart';

class AppHeaderViewWidget extends StatelessWidget {
  final String bigText;
  final String? smallText;
  final VoidCallback? smallTextTap;

  const AppHeaderViewWidget({
    Key? key,
    required this.bigText,
    this.smallText,
    this.smallTextTap,
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
            onTap: smallTextTap,
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
