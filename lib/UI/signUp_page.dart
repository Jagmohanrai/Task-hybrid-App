import 'package:flutter/material.dart';
import 'package:task/Services/auth_services.dart';
import 'package:task/UI/homePage.dart';

import '../config.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool loading = false;
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _cpassword = TextEditingController();
  AuthServices _authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  Center(
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 20 * responsiveCofficient(context),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10 * responsiveCofficient(context)),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                        fontSize: 16 * responsiveCofficient(context),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8.0 * responsiveCofficient(context),
                              left: 8 * responsiveCofficient(context)),
                          child: Text(
                            'User Name',
                            style: TextStyle(
                              fontSize: 16 * responsiveCofficient(context),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: _username,
                            maxLines: 1,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0 * responsiveCofficient(context),
                                    right: 10 * responsiveCofficient(context)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.account_box,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              hintText: 'Enter User Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0 * responsiveCofficient(context))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8.0 * responsiveCofficient(context),
                              left: 8 * responsiveCofficient(context)),
                          child: Text(
                            'Email Id',
                            style: TextStyle(
                              fontSize: 16 * responsiveCofficient(context),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: _email,
                            maxLines: 1,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0 * responsiveCofficient(context),
                                    right: 10 * responsiveCofficient(context)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              hintText: 'Enter Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0 * responsiveCofficient(context))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8.0 * responsiveCofficient(context),
                              left: 8 * responsiveCofficient(context)),
                          child: Text(
                            'Mobile Number',
                            style: TextStyle(
                              fontSize: 16 * responsiveCofficient(context),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: _number,
                            maxLines: 1,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0 * responsiveCofficient(context),
                                    right: 10 * responsiveCofficient(context)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              hintText: 'Enter your 10 digit mobile number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0 * responsiveCofficient(context))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8.0 * responsiveCofficient(context),
                              left: 8 * responsiveCofficient(context)),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16 * responsiveCofficient(context),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            obscureText: true,
                            controller: _password,
                            maxLines: 1,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0 * responsiveCofficient(context),
                                    right: 10 * responsiveCofficient(context)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              hintText: 'Password should be in 8-15 characters',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0 * responsiveCofficient(context))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 8.0 * responsiveCofficient(context),
                              left: 8 * responsiveCofficient(context)),
                          child: Text(
                            'Confirm password',
                            style: TextStyle(
                              fontSize: 16 * responsiveCofficient(context),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            obscureText: true,
                            controller: _cpassword,
                            maxLines: 1,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0 * responsiveCofficient(context),
                                    right: 10 * responsiveCofficient(context)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              hintText: 'Repeat password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0 * responsiveCofficient(context))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20 * responsiveCofficient(context))),
                    color: Colors.red,
                    onPressed: () {
                      if (_password.text == _cpassword.text) {
                        setState(() {
                          loading = true;
                        });
                        _authServices
                            .sighUp(_username.text, _email.text, _password.text,
                                _number.text)
                            .then((value) {
                          if (value == "account created") {
                            if (this.mounted) {
                              setState(() {
                                loading = false;
                              });
                            }
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }
                        });
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 140.0 * responsiveCofficient(context),
                        vertical: 10 * responsiveCofficient(context),
                      ),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20 * responsiveCofficient(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    ));
  }
}
