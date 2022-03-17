import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_fresh_app/Screens/home_screen/fresh_home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/showloading.dart';

class AuthProvider with ChangeNotifier {
  singup(String email, String password, String name, String userType,
      context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (userCredential != null) {
        showLoading(context);
        await FirebaseFirestore.instance
            .collection("user")
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .set({
          "username": name,
          "email": email,
          "userid": FirebaseAuth.instance.currentUser!.uid,
          "userType": userType,
        }).then((value) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                     FreshHomeScreen()));
        });
      }
    }  catch (e) {
      print(e);
      debugPrint('=========================');
    }
  }

}