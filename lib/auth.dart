import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

abstract class BaseAuth {
  Future<String> signIn(String email, String password);
  Future<String> signUp(String email, String password);
}


class Auth implements BaseAuth {
  Future<String> signIn(String email, String password) async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return user.user!.uid;
  }

  Future<String> signUp(String email, String password) async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return user.user!.uid;
  }
}
