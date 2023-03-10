import 'package:flutter/material.dart';
import '../client/calendar/calendar_screen.dart';
import '../client/explore/explore_screen.dart';
import '../coach/client/clients_screen.dart';
import '../client/home/home_screen.dart';
import '../client/profile/profile_screen.dart';
import '../screen.dart';

import '../../configs/config.dart';
import '../../../gen/assets.gen.dart';
import '../../widgets/export.dart';
import '../client/workouts/workouts_screen.dart';
import '../coach/calendar/calendar_screen.dart';
import '../coach/home/home_screen.dart';
import '../coach/profile/coach_profile_screen.dart';

enum AccountType { client, coach }

class MainScreen extends StatefulWidget {
  final AccountType accountType;
  const MainScreen({Key? key, required this.accountType}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> _widgetOptions;

  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    switch (widget.accountType) {
      case AccountType.client:
        _widgetOptions = const [
          ClientHomeScreen(),
          ExploreScreen(),
          ClientWorkoutsScreen(),
          ClientCalendarScreen(),
          ClientProfileScreen(),
        ];

        break;
      case AccountType.coach:
        _widgetOptions = const [
          CoachHomeScreen(),
          ClientsScreen(),
          CoachWorkoutsScreen(),
          CoachCalendarScreen(),
          CoachProfileScreen(),
        ];

        break;
      default:
    }
  }

  void _selectTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      padding: EdgeInsets.zero,
      bottom: _bottomNavigation(),
      child: _widgetOptions.elementAt(_selectedTab),
    );
  }

  Widget _bottomNavigation() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Palette.greyLv2),
        ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Assets.images.home.svg(
              color: _selectedTab == 0 ? Palette.blueLv2 : null,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Assets.images.clients.svg(
              color: _selectedTab == 1 ? Palette.blueLv2 : null,
            ),
            label: 'Clients',
          ),
          BottomNavigationBarItem(
            icon: Assets.images.workouts.svg(
              color: _selectedTab == 2 ? Palette.blueLv2 : null,
            ),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Assets.images.calendar.svg(
              color: _selectedTab == 3 ? Palette.blueLv2 : null,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Assets.images.personal.svg(
              color: _selectedTab == 4 ? Palette.blueLv2 : null,
            ),
            label: 'Personal',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: _selectedTab,
        selectedItemColor: Palette.blueLv2,
        unselectedItemColor: Palette.black,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        backgroundColor: Palette.white,
        onTap: _selectTab,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
