import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:gradutionprojectadmin/NavBar.dart';
import 'package:gradutionprojectadmin/admin_screen_control_indicator.dart';
import 'package:gradutionprojectadmin/authentication/admin_signin_view.dart';

import 'authentication/admin_signin_controller.dart';
class ControlView extends GetWidget<sign_in_controller> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get
          .find<sign_in_controller>()
          .user == null)
          ? SignIn()
          : GetBuilder<AdminScreenControlIndcator>(
        builder: (controller) =>
            Scaffold(
              bottomNavigationBar: BottomNavBar(),

            ),
      );
    });
  }
}
