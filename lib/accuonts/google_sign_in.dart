import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController extends GetxController {
  var _googleSign = GoogleSignIn();
  var googleAccunt = Rx<GoogleSignInAccount?>(null);

  login() async {
    googleAccunt.value = await _googleSign.signIn();
  }
}
