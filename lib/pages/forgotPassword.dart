import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:web_portfolio/pages/registeration.dart';

import '../Widgets/myTextField.dart';
import 'manage_your_account.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Frogot Password'),
        // ),
        body: size.width <= 650
            ? SingleChildScrollView(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: SafeArea(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/logo.png',
                            // height: 100,
                            // width: 100,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistrationScreen()));
                                  },
                                  child: Text('Login'),
                                ),
                                SizedBox(width: 10),
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistrationScreen()));
                                  },
                                  child: Text('Register'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("Forgot your password?",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Enter your email."),
                    SizedBox(height: 10),
                    Divider(height: 5, color: Colors.black),
                    SizedBox(height: 20),
                    Text("Email"),
                    MyTextFormField(
                        hint: "Email",
                        controller: emailController,
                        kry: TextInputType.emailAddress,
                        width: 300),
                    SizedBox(height: 10),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ManageYourAccount()));
                      },
                      child: Text('Submit'),
                    ),
                  ],
                )),
              )
            : SingleChildScrollView(
                padding: EdgeInsets.only(left: 150, top: 20, right: 150),
                child: SafeArea(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          // height: 100,
                          // width: 100,
                        ),
                        Row(
                          children: [
                            RaisedButton(
                              color: Colors.blue,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationScreen()));
                              },
                              child: Text('Login'),
                            ),
                            SizedBox(width: 10),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordScreen()));
                              },
                              child: Text('Register'),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Forgot your password?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Enter your email."),
                    SizedBox(height: 10),
                    Divider(height: 5, color: Colors.black),
                    SizedBox(height: 20),
                    Text("Email"),
                    MyTextFormField(
                        hint: "Email",
                        controller: emailController,
                        kry: TextInputType.emailAddress,
                        width: 400),
                    SizedBox(height: 10),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ManageYourAccount()));
                      },
                      child: Text('Submit'),
                    ),
                    /* SizedBox(height: 20),
                    Text("Forgot your password?"),
                    SizedBox(height: 13),
                    Text("Register as a new user"),*/
                  ],
                )),
              ));
  }
}
