import 'package:flutter/material.dart';
import 'package:hints/Pages/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffF8F3EC),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Hints.',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xff022048),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook_outlined,
                      color: Colors.deepPurple.shade900,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Continue with Facebook',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.deepPurple.shade900,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/google.png',
                      width: 18,
                      height: 18,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Continue with Google',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => Createaccount());
                  Navigator.of(context).push(route);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: Color(0xff022048),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Continue with Email',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        color: Color(0xff022048),
                        fontWeight: FontWeight.bold,
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.grey)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) => Createaccount());
                      Navigator.of(context).push(route);
                    },
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff022048),
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
