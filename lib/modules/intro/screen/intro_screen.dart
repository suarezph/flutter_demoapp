import 'package:demoapp/constants/theme.dart';
import 'package:demoapp/modules/login/screen/login_screen.dart';
import 'package:demoapp/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  final UserRepository userRepository;
  const IntroScreen({Key? key, required this.userRepository}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool clicked = false;

  void afterIntroComplete() {
    setState(() {
      clicked = true;
    });
  }

  final List<PageViewModel> pages = [
    PageViewModel(
      titleWidget: Column(
        children: [
          const Text(
            "FREE GIFT",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(8),
          Container(
            height: 3,
            width: 100,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      body:
          'Free gifts with purchase. Offer free gifts like a gift wrap, gift card, or any free products.',
      image: Center(
        child: SvgPicture.asset('assets/images/gift.svg'),
      ),
    ),
    PageViewModel(
      titleWidget: Column(
        children: [
          const Text(
            "PAYMENT INTEGRATION",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(8),
          Container(
            height: 3,
            width: 100,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      body:
          'Free gifts with purchase. Offer free gifts like a gift wrap, gift card, or any free products.',
      image: Center(
        child: SvgPicture.asset('assets/images/payment.svg'),
      ),
    ),
    PageViewModel(
      titleWidget: Column(
        children: [
          const Text(
            "CALL CENTER",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(8),
          Container(
            height: 3,
            width: 100,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      body:
          'Free gifts with purchase. Offer free gifts like a gift wrap, gift card, or any free products.',
      image: Center(
        child: SvgPicture.asset('assets/images/call.svg'),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return clicked
        ? LoginScreen(
            userRepository: widget.userRepository,
          )
        : IntroductionScreen(
            pages: pages,
            onDone: () {
              afterIntroComplete();
            },
            onSkip: () {
              afterIntroComplete();
            },
            skip: const Text(
              "Skip",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            next: const Icon(Icons.navigate_next),
            done: const Text(
              "Done",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            showSkipButton: true,
            dotsDecorator: DotsDecorator(
              size: const Size.square(7.0),
              activeSize: const Size(20.0, 5.0),
              activeColor: Styles.primaryColor,
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          );
  }
}
