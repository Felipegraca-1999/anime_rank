import 'package:anime_rank/core/repository/auth/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final _firebaseAuith = FirebaseAuth.instance;

class AuthRepository implements IAuthRepository {

  @override
  Future<void> signInFirebase() async {
    try {
      final googleSignIn = GoogleSignIn();
      final googleSignInAccount = await googleSignIn.signIn();

      if(googleSignInAccount != null) {
        final googleSignInAuthentication = await googleSignInAccount.authentication;
        final credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        final authResult = await _firebaseAuith.signInWithCredential(credential);
        final user = authResult.user;
      }
    } catch (e) {
      print("try error : $e");
    }
  }
}
