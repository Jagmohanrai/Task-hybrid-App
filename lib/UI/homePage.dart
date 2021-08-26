import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:task/Services/auth_services.dart';
import 'package:task/UI/login_page.dart';
import 'package:task/UI/submit_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late var data = null;
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  AuthServices _authServices = AuthServices();

  @override
  void initState() {
    super.initState();
    _authServices.readData().then((value) {
      setState(() {
        data = value.data();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: data == null
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello ${_firebaseAuth.currentUser?.email} you are logged in ',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("Email is-> ${data["email"]}"),
                  Text("phone number is-> is ${data["phonenumber"]}"),
                  Text("username is-> ${data["username"]}"),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut().then(
                            (value) => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            ),
                          );
                    },
                    child: Text("Sign Out"),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SubmitPage(),
                        ),
                      );
                    },
                    child: Text("Request Page"),
                  )
                ],
              ),
      ),
    ));
  }
}
