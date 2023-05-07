import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradutionprojectadmin/authentication/admin_signin_controller.dart';
import 'package:gradutionprojectadmin/authentication/widgets/CustomTextFormFieldLogin.dart';
import 'package:gradutionprojectadmin/authentication/widgets/custom_button_login.dart';
import 'package:gradutionprojectadmin/constant/constants.dart';
import 'package:gradutionprojectadmin/pages_control_admin.dart';
import 'package:simple_shadow/simple_shadow.dart';


class SignIn extends GetWidget<sign_in_controller> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController emailcontroller = new TextEditingController();
  final TextEditingController passwordcontroller = new TextEditingController();
  final TextEditingController namecontroller = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      /* appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      color: Color(0xFF184C72).withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.person_outline_outlined,
                  color: Color(0xFF184C72),
                ),
              ],
            ),
            Text(
              'Welcome back ,',
              style: TextStyle(
                  fontSize: 12, color: Color(0xFF184C72).withOpacity(0.7)),
            ),
          ],
        ),
      ),*/
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(60),
            //  color: Colors.grey.shade200,

            gradient: LinearGradient(colors: [
              gradientColorA,
              gradientColorB,
            ], /*stops: [
                0.2,
                0.2,
                0.1,
                0.2,
              ],*/ begin: Alignment.topCenter, end: Alignment.bottomLeft),
          ),
          height: MediaQuery.of(context).size.height / 1.02,
          width: MediaQuery.of(context).size.height / 2,
          /* decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.grey.shade200,
          ),*/
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  SimpleShadow(
                    child: Image.asset(
                      'assest/login_sticker.png',
                      width: MediaQuery.of(context).size.width / 1.3,
                    ),
                    opacity: 0.6,
                    // Default: 0.5
                    color: Colors.black.withOpacity(0.5),
                    // Default: Black
                    offset: Offset(5, 5),
                    // Default: Offset(2, 2)
                    sigma: 4, // Default: 2
                  ),
                  Text('Welcome',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  custom_textformfield(
                    controller: emailcontroller,
                    onSave: (value){
                      emailcontroller.text=value!;
                    },
                    validator: (value){
                      String patttern = r'^([\w\.]+@(yahoo\.)+(com))$';
                      RegExp regExp = new RegExp(patttern);
                      if(value==null || regExp.hasMatch(value)==false){
                        return("Error Enter a valid email");
                      }
                    },
                    isPasswordtype: false,
                    hintText: '123456789@o6u.edu.eg',
                    icon: Icons.person_outline_outlined,

                  ),
                  SizedBox(
                    height: 30,
                  ),
                  custom_textformfield(
                    onSave: (value){
                      passwordcontroller.text=value!;
                    },
                    validator: (value){
                      if(value.isEmpty ){
                        return("Error Enter a valid password");
                      }
                    },
                    isPasswordtype: false,
                    hintText: '*************',
                    icon: Icons.password_rounded,
                  ),
                  SizedBox(height: 20,),
                  CustomButton(text: 'Login', OnPress: (){

                    _formKey.currentState!.save();
                    if(_formKey.currentState!.validate()){
                      controller.signInWithEmailAndPassword(emailcontroller.text.trim(),passwordcontroller.text.trim());
                      Get.offAll(()=>ControlView());
                    }
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                      ),

                    ],
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
