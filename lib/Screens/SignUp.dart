import 'package:flutter/material.dart';

import '../Services/firebase_services.dart';
import '../Widgets/Custom_text_feild.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _ContactState();
}

class _ContactState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _CpasswordController = TextEditingController();

  final FirebaseServices _SignUpFB = FirebaseServices();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Create Account",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              fontFamily: "Airbnb",
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Welcome Text

                            SizedBox(height: 30),

                            // Email Address
                            CustomTextField(
                              labeltext: 'Your Name',
                              controller: _usernameController,
                            ),

                            SizedBox(height: 20),

                            // Password
                            CustomTextField(
                              labeltext: 'Email Adress',
                              controller: _emailController,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              labeltext: 'Password',
                              controller: _passwordController,
                              isPassword: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              labeltext: 'Confirm Password',
                              isPassword: true,
                              controller: _CpasswordController,
                            ),

                            SizedBox(height: 20),

                            // Sign In Button
                            ElevatedButton(
                              onPressed: () {
                                print(_emailController.text);
                                _SignUpFB.registration(
                                    password: _passwordController.text,
                                    cPassword: _CpasswordController.text,
                                    context: context,
                                    username: _usernameController.text,
                                    email: _emailController.text);
                                print(_emailController);
                                if (_formkey.currentState?.validate() ??
                                    false) {}
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15),
                                minimumSize: Size(double.infinity, 50),
                              ),
                              child: Text('Sign In',
                                  style: TextStyle(color: Colors.white)),
                            ),

                            SizedBox(height: 10),

                            // Sign In with Google Button
                            ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide.none,
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15),
                                minimumSize: Size(double.infinity, 50),
                              ),
                              icon: Image.asset('assets/images/img_5.png',
                                  height: 24),
                              label: Text(
                                'Sign in with Google',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
