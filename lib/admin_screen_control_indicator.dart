import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradutionprojectadmin/adminBooking/admin_booking_view.dart';
import 'package:gradutionprojectadmin/adminEvents/admin_events_view.dart';
import 'package:gradutionprojectadmin/adminTournaments/admin_tournaments_view.dart';
import 'package:gradutionprojectadmin/profile/admin_profile_view.dart';
class AdminScreenControlIndcator extends GetxController{
  int _navigatorvalue=0;
  get navigatorvalue=>_navigatorvalue;
  Widget _current_screen=AdminEventsView();
  get current_screen=>_current_screen;

  ChangeScreen(int value){
    _navigatorvalue=value;
    switch(value){
      case 0:{
        _current_screen=AdminEventsView();
        break;
      }
      case 1:{
        _current_screen=AdminProfileBooking();
        break;
      }
      case 2:{
        _current_screen=AdminTournamentsView();
        break;
      }
      case 3:{
        _current_screen=AdminProfileView();
        break;
      }
    }
    update();

  }

}