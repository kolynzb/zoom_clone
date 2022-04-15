import 'package:google_sign_in/google_sign_in.dart';

class AuthController {
  signInWithGoogle() async {
    try {
     GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
     GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

     GoogleAuth
    } catch (e) {}
  }
}
