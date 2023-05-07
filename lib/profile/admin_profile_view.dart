import 'package:flutter/material.dart';
import 'package:gradutionprojectadmin/authentication/admin_signin_view.dart';
import 'package:gradutionprojectadmin/authentication/widgets/custom_button_login.dart';
import 'package:gradutionprojectadmin/profile/admin_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AdminProfileView extends GetWidget<profile_controller> {

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: Padding(
            padding:
            const EdgeInsets.only(top: 38, right: 15, left: 15, bottom: 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 120,right: 120,top:250,bottom: 250),
                child: Center(      //your code goes here
                  child: CustomButton(text: 'sign out',OnPress: (){
                    Get.offAll(SignIn());


                  },),
                ),
              ),
            ),
          ),
        );

  }
}
