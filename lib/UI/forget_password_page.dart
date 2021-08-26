import 'package:flutter/material.dart';

import '../config.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0 * responsiveCofficient(context)),
          child: Container(
            height: 550 * responsiveCofficient(context),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  spreadRadius: 10,
                )
              ],
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 20 * responsiveCofficient(context),
                ),
                Center(
                  child: Text(
                    'CHANGE PASSWORD',
                    style: TextStyle(
                      fontSize: 20 * responsiveCofficient(context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15 * responsiveCofficient(context),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15 * responsiveCofficient(context)),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                      fontSize: 16 * responsiveCofficient(context),
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20 * responsiveCofficient(context),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0 * responsiveCofficient(context)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          30 * responsiveCofficient(context)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      obscureText: true,
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
                        hintText: 'Enter Old Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              30.0 * responsiveCofficient(context))),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20 * responsiveCofficient(context),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0 * responsiveCofficient(context)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          30 * responsiveCofficient(context)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      obscureText: true,
                      maxLines: 1,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              left: 8.0 * responsiveCofficient(context),
                              right: 10 * responsiveCofficient(context)),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.lock_clock_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        hintText: 'Enter New Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              30.0 * responsiveCofficient(context))),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20 * responsiveCofficient(context),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0 * responsiveCofficient(context)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          30 * responsiveCofficient(context)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      obscureText: true,
                      maxLines: 1,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              left: 8.0 * responsiveCofficient(context),
                              right: 10 * responsiveCofficient(context)),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.lock_clock_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              30.0 * responsiveCofficient(context))),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20 * responsiveCofficient(context),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0 * responsiveCofficient(context)),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20 * responsiveCofficient(context))),
                    color: Colors.red,
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10 * responsiveCofficient(context),
                      ),
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18 * responsiveCofficient(context),
                        ),
                      ),
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Reset Password'),
                            content: Text(
                                "Reset link is Shared on your mail Please use it to reset the password"),
                            actions: [
                              // ignore: deprecated_member_use
                              FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("ok"),
                              )
                            ],
                          );
                        });
                  },
                  child: Text(
                    'Change Firebase Password',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
