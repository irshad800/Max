import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:max/Screens/Screen1.dart';

import '../Screens/login_page.dart';

class FirebaseServices {
  Future<void> registration({
    required String email,
    required String password,
    required String cPassword,
    required BuildContext context,
    required String? username,
  }) async {
    if (password != cPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Passwords do not match")),
      );
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      print("Account Created Successfully");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Account Created Succesfully")));
      print("Username: $username");
      print("Password: $password");
      print("Confirm Password: $cPassword");
      print("Email: $email");
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green.withOpacity(0.9),
          content: Text(
            e.message ?? "",
            selectionColor: Colors.green,
          ),
        ),
      );
      print(e.message);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("SignUp Failed")),
      );
    }
  }

  // Sign-in method
  Future<CircularProgressIndicator> signIn({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Succesfull")));
      print("Sign In Successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Screen1()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Incorrect email or password")),
      );
    }
    return CircularProgressIndicator();
  }
}
