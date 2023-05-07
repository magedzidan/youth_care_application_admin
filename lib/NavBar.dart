import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradutionprojectadmin/adminBooking/admin_booking_view.dart';
import 'package:gradutionprojectadmin/adminEvents/admin_events_view.dart';
import 'package:gradutionprojectadmin/adminTournaments/admin_tournaments_view.dart';
import 'package:gradutionprojectadmin/admin_screen_control_indicator.dart';
import 'package:gradutionprojectadmin/constant/constants.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'profile/admin_profile_view.dart';
class BottomNavBar extends StatelessWidget {

  final authService =Get.find<AdminScreenControlIndcator>();

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        AdminEventsView(),
      AdminProfileBooking(),
        AdminTournamentsView(),
        AdminProfileView(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems(){
      return [
        /*  ImageIcon(
          AssetImage('assest/icons/home_outilned.png'),
          size: 120,
        ),*/
        PersistentBottomNavBarItem(
          icon:Icon(
            Icons.house_outlined,
          ),
          inactiveIcon: Icon(
            Icons.house,
          ),
          title: ("Events"),
          activeColorPrimary: primarycolor,
          inactiveColorPrimary: Colors.grey,
        ), PersistentBottomNavBarItem(
          icon:Icon(
            Icons.event_available,
          ),
          inactiveIcon: Icon(
            Icons.event,
          ),
          title: ("Booking"),
          activeColorPrimary: primarycolor,
          inactiveColorPrimary: Colors.grey,
        ),

        /*   PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          inactiveIcon: const Icon(
            Icons.add_outlined,
            color: primarycolor,
          ),
          //F1F7F0
          activeColorPrimary: Color(0xFFF7F5F4),
          inactiveColorPrimary: primarycolor,
        ),*/

        PersistentBottomNavBarItem(
          icon:Icon(
            Icons.emoji_events_outlined,
          ),
          inactiveIcon: Icon(
            Icons.emoji_events,
          ),
          title: ("Tournaments"),
          activeColorPrimary: primarycolor,
          inactiveColorPrimary: Colors.grey,
        ),PersistentBottomNavBarItem(
          icon:Icon(
            Icons.person_pin_circle_outlined,
          ),
          inactiveIcon: Icon(
            Icons.person_pin,
          ),
          title: ("Profile"),
          activeColorPrimary: primarycolor,
          inactiveColorPrimary: Colors.grey,
        ),

      ];


    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      screens:_buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            blurRadius: 15.0,
            // has the effect of softening the shadow
//                    spreadRadius: 2.0,
            // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
      NavBarStyle.style19,//12,3,13,14,19


    );
  }
}
