import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:gradutionprojectadmin/adminTournaments/admin_tournaments_view.dart';
import 'package:gradutionprojectadmin/helper/binidng.dart';
import 'package:gradutionprojectadmin/pages_control_admin.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      //initialBinding: Binding(),
        theme: ThemeData(

        ),
      home:ControlView(),
      // home:FirstPage(),

      /*routes:{
          "addnotes":(context) => addnotes()
        },*/

    );
  }

}