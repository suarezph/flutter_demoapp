import 'package:auto_route/auto_route.dart';
import 'package:demoapp/constants/theme.dart';
import 'package:demoapp/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      // appBarBuilder: (context, tabsRouter) => AppBar(
      //   backgroundColor: Styles.bgColor,
      //   shadowColor: Colors.transparent,
      //   title: const Text(
      //     "Change to widget",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   centerTitle: true,
      //   leading: const AutoLeadingButton(),
      // ),
      backgroundColor: Styles.bgColor,
      routes: const [
        DashboardRoute(),
        WalletRoute(),
        ProfileRoute(),
        OthersRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedItemColor: Styles.primaryColor,
          unselectedItemColor: const Color(0xFF526480),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.dashboard, size: 25),
              title: const Text("Dashboard"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.wallet, size: 25),
              title: const Text("Wallet"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person, size: 25),
              title: const Text("Profile"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.more_horiz_rounded, size: 25),
              title: const Text("More"),
            ),
          ],
        );
      },
    );
  }
}
