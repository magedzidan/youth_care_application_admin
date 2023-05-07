import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradutionprojectadmin/admin_screen_control_indicator.dart';
import 'package:gradutionprojectadmin/authentication/admin_signin_controller.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => sign_in_controller(),fenix: true);
    Get.lazyPut(() => AdminScreenControlIndcator(),fenix: true);

  }


}