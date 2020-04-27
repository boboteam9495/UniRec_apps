import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unirecapp/components/rounded_button.dart';
import 'package:unirecapp/constants.dart';

class LoginScreen extends StatefulWidget {
  static final String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
//                kPrimaryColour,
//                Color(0xff1e90ff),
//                Color(0xff5352ed),
//                kSecondaryColour,
                Colors.grey, Colors.blueGrey
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TyperAnimatedTextKit(
                speed: Duration(milliseconds: 200),
                text: ['UniRec'],
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  color: kLightFontColour,
                ),
              ),
              Text(
                'Jot down every moment',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 60.0,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  labelText: "Email",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: 16.0,
                  color: kDarkFontColour,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  labelText: "Password",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                style: TextStyle(
                  fontSize: 16.0,
                  color: kDarkFontColour,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RoundedButton(
                colour: kPrimaryColour,
                title: 'Login',
                onPressed: null,
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: kLineColour,
                    ),
                  ),
                  Text('OR'),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: kLineColour,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 128.0,
                    child: RaisedButton(
                      onPressed: () {
                        // Further action
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.facebookF,
                            size: 16.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Facebook',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 128.0,
                    child: RaisedButton(
                      onPressed: () {
                        // Further action
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.red,
                      textColor: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.google,
                            size: 16.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Google',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
