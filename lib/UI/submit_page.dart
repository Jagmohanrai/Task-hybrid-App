import 'package:flutter/material.dart';
import 'package:task/Services/auth_services.dart';

import '../config.dart';

class SubmitPage extends StatefulWidget {
  const SubmitPage({Key? key}) : super(key: key);

  @override
  _SubmitPageState createState() => _SubmitPageState();
}

class _SubmitPageState extends State<SubmitPage> {
  AuthServices _authServices = AuthServices();
  bool loading = false;
  TextEditingController _fname = TextEditingController();
  TextEditingController _lname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _subject = TextEditingController();
  TextEditingController _msg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10 * responsiveCofficient(context)),
              child: ListView(
                children: [
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                  Center(
                    child: Text(
                      'SUBMIT REQUEST',
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                            'First Name',
                            style: TextStyle(
                              fontSize: 16 * responsiveCofficient(context),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: _fname,
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Enter your First Name',
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
                            'Last Name',
                            style: TextStyle(
                              fontSize: 16 * responsiveCofficient(context),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          height: 50 * responsiveCofficient(context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: _lname,
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Enter your Last Name',
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
                          height: 50 * responsiveCofficient(context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: _email,
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Enter your Email Id',
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
                          height: 50 * responsiveCofficient(context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: _number,
                            maxLines: 1,
                            decoration: InputDecoration(
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
                            'Subject',
                            style: TextStyle(
                              fontSize: 16 * responsiveCofficient(context),
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          height: 50 * responsiveCofficient(context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30 * responsiveCofficient(context)),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            controller: _subject,
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Enter the Subject',
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
                            'Message',
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
                            controller: _msg,
                            maxLines: 20,
                            minLines: 10,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText:
                                  'Enter your Message\nwithin 400 Characters',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      30.0 * responsiveCofficient(context)),
                                ),
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
                      setState(() {
                        loading = true;
                      });
                      _authServices
                          .submitRequest(_fname.text, _lname.text, _email.text,
                              _number.text, _subject.text, _msg.text)
                          .then((value) {
                        if (value == "Submited succesfully") {
                          Navigator.pop(context);
                        }
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10 * responsiveCofficient(context),
                      ),
                      child: Text(
                        'SUBMIT REQUEST',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20 * responsiveCofficient(context)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20 * responsiveCofficient(context),
                  ),
                ],
              ),
            ),
    ));
  }
}
