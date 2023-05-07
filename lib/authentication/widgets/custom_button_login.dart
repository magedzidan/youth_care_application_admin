import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradutionprojectadmin/authentication/widgets/CustomTextLogin.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final OnPress;

  const CustomButton({super.key, required this.text, required this.OnPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.15,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
        onPressed: OnPress,
        //minWidth: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/16,
        color: Color(0xFF179d9e).withAlpha(210),
        child: CustomText(
          text: text,
          alignment: Alignment.center,
          color: Colors.white,
          fontsize: 21,
        ),
      ),
    );
  }
}
