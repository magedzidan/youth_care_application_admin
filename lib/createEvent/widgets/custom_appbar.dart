
import 'package:vector_math/vector_math_geometry.dart';
import 'package:flutter/material.dart';
import 'package:gradutionprojectadmin/constant/constants.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String headline;
  final bool isBackButton;
  const CustomAppbar(
      {Key? key, required this.headline, required this.isBackButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
          leading: isBackButton
              ? IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
              : null,
          centerTitle: true,
          backgroundColor: gradientColorA,
          elevation: 0.0,
          title: Text(
            headline,
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          )
        // IconButton(
        //     icon: Icon(
        //       favorite == false ? Icons.favorite_outline : Icons.favorite,
        //       color: theme.primaryColor,
        //       size: 35,
        //     ),
        //     onPressed: () => setState(() {
        //           favorite = !favorite;
        //         })),

      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
