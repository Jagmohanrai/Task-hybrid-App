import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<String> signIn(
    String email,
    String password,
  ) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "logged in";
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<String> sighUp(
    String username,
    String email,
    String password,
    String mobileNumber,
  ) async {
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        User? user = FirebaseAuth.instance.currentUser;
        await _firebaseFirestore.collection("users").doc(user?.uid).set({
          'email': email,
          'username': username,
          'phonenumber': mobileNumber,
        }).then((value) {
          return "account created";
        });
      });
      return "account created";
    } catch (e) {
      return e.toString();
    }
  }

  Future<DocumentSnapshot> readData() async {
    return await _firebaseFirestore
        .collection('users')
        .doc(_firebaseAuth.currentUser?.uid)
        .get();
  }

  Future<String> submitRequest(
    String fname,
    String lname,
    String email,
    String mobile,
    String subject,
    String msg,
  ) async {
    try {
      await _firebaseFirestore
          .collection('Requests')
          .doc("$email$subject")
          .set({
        "fname": fname,
        "lname": lname,
        "email": email,
        "mobile": mobile,
        "subject": subject,
        "msg": msg
      });
      return "Submited succesfully";
    } on Exception catch (e) {
      print(e);
      return e.toString();
    }
  }

  resetPassword(String mail) {
    _firebaseAuth.sendPasswordResetEmail(email: mail);
  }
}
