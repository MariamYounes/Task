import 'package:flutter/material.dart';
import 'package:task/screens/home.dart';
import 'package:task/widget/appbar.dart';
import 'package:task/widget/text.dart';

import '../const.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  TextEditingController userNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Scaffold(
        key: _scaffoldkey,
        appBar: appBar(),
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text("Please enter your name" , style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0 , right: 10),
                child: textField("User Name", validatae, controller: userNameController),
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState.validate()) {
                    if (userNameController.text != "") {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    } else {
                      _scaffoldkey.currentState.showSnackBar(SnackBar(
                        content: Text(
                          'Your name not true',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, color: Constants.redColor()),
                        ),
                      ));
                    }
                  }
                },
                child: Container(
                  margin: EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width * .7,
                  height: MediaQuery.of(context).size.height * .1,
                  decoration: BoxDecoration(
                      color: Constants.skyColor(),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Text(
                    'Enroll',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  alignment: Alignment.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  validatae(String str) {
    print('str');
  }
}
