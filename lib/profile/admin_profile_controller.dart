
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:gradutionprojectadmin/authentication/admin_signin_view.dart';
class profile_controller extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Rxn<User> user = Rxn<User>();


  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user?.bindStream(auth.authStateChanges());
  }

  void signout() async{
    await auth.signOut().then((value) => Get.offAll(()=>SignIn()));
  }

}