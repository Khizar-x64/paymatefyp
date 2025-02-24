import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Auth{
  final FirebaseAuth _firebaseAuth= FirebaseAuth.instance;

  User? get currentUset =>_firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signinwithEmailAndPassword({
    required String email,
    required String password,
  })async{
    await _firebaseAuth.signInWithEmailAndPassword
      (email: email, password: password);
  }

  Future<void> createUserwithEmailAndPassword({
    required String email,
    required String password,
  })async{
    await _firebaseAuth.createUserWithEmailAndPassword
      (email: email, password: password);
  }

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }
}
