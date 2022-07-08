import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/pages/registeration.dart';

import '../Widgets/myTextField.dart';
import 'forgotPassword.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: size.width <= 650
            ? SingleChildScrollView(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: SafeArea(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
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
                    Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text("Email"),
                    MyTextFormField(
                        hint: "Email",
                        controller: emailController,
                        kry: TextInputType.emailAddress,
                        width: 300.w),
                    Text("Password"),
                    MyTextFormField(
                        hint: "Password",
                        controller: passwordController,
                        kry: TextInputType.visiblePassword,
                        width: 300.w),
                    SizedBox(height: 10),
                    RaisedButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text('Login')),
                    SizedBox(height: 20),
                    Text("Register as a new user"),
                    SizedBox(height: 13),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                        },
                        child: Text("Forgot your password?")),
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
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text('Register'),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text("Email"),
                    MyTextFormField(
                        hint: "Email",
                        controller: emailController,
                        kry: TextInputType.emailAddress,
                        width: 400),
                    Text("Password"),
                    MyTextFormField(
                        hint: "Password",
                        controller: passwordController,
                        kry: TextInputType.visiblePassword,
                        width: 400),
                    SizedBox(height: 10),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                    SizedBox(height: 20),
                    Text("Register as a new user"),
                    SizedBox(height: 13),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                        },
                        child: Text("Forgot your password?")),
                  ],
                )),
              ));
  }
}
