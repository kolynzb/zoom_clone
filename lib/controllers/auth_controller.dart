import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Stream<User?> get authChanges => _auth.authStateChanges();

  signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      User? user = userCredential.user;
      if (user != null) {
        // Check if the user is new if not save them to the database.
        if (userCredential.additionalUserInfo!.isNewUser) {
          //save new user to firestore database
          _firestore.collection("users").doc(user.uid).set({
            "username": user.displayName,
            'uid': user.uid,
            'userImage': user.photoURL
          });
        } else {}
      }
    } catch (e) {}
  }
}
