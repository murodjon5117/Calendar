import 'package:custom_calendar/core/resources/app_icons.dart';
import 'package:custom_calendar/core/resources/app_router.dart';
import 'package:custom_calendar/core/resources/app_routes.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          final String location = GoRouterState.of(context).uri.toString();
          if (!location.startsWith(calendarPath)) {
            _onItemTapped(0, context);
          }
          return true;
        },
        child: widget.child,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF181818), Color(0xFF060606)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 2],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s25),
            topRight: Radius.circular(AppSize.s25),
          ),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: SvgPicture.asset(
                AppIcons.home,
              ),
              activeIcon: SvgPicture.asset(
                AppIcons.homeActive,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Saved',
              icon: SvgPicture.asset(
                AppIcons.saved,
              ),
              activeIcon: SvgPicture.asset(
                AppIcons.savedActive,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: SvgPicture.asset(
                AppIcons.search,
              ),
              activeIcon: SvgPicture.asset(
                AppIcons.searchActive,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: SvgPicture.asset(
                AppIcons.profile,
              ),
              activeIcon: SvgPicture.asset(
                AppIcons.profileActive,
              ),
            ),
          ],
          currentIndex: _getSelectedIndex(context),
          onTap: (index) => _onItemTapped(index, context),
        ),
      ),
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(homePath)) {
      return 0;
    }
    if (location.startsWith(savedPath)) {
      return 1;
    }
    if (location.startsWith(searchPath)) {
      return 2;
    }
    if (location.startsWith(profilePath)) {
      return 3;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.goNamed(AppRoutes.homeRoute);
        break;
      case 1:
        context.goNamed(AppRoutes.savedRoute);
        break;
      case 2:
        context.goNamed(AppRoutes.searchRoute);
        break;
      case 3:
        context.goNamed(AppRoutes.profileRoute);
        break;
    }
  }
}
