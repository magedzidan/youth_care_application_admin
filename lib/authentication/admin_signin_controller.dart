import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
class sign_in_controller extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> _user = Rxn<User>();

  get user => _user.value?.email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user?.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void signInWithEmailAndPassword(String email,String password) async {

    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Get.snackbar('Succeful login', '${value.user?.email}',
            snackPosition: SnackPosition.TOP);
        print(value);
      });
    } catch (e) {
      print(e);
      Get.snackbar('Error Login account', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signout() async{
    await _auth.signOut();
  }
}
