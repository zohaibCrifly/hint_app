import 'package:flutter/material.dart';
import 'package:hints/Pages/hintselect.dart';
import 'package:google_fonts/google_fonts.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({Key? key}) : super(key: key);

  @override
  _CreateaccountState createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffF8F3EC),
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Continue with Email',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff022048),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      hintText: 'Enter your Email',
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      hintText: 'Enter your Password',
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff022048),
                            padding: EdgeInsets.symmetric(vertical: 20)),
                        onPressed: () {
                          var route = new MaterialPageRoute(
                              builder: (BuildContext content) =>
                                  Hintselection());
                          Navigator.of(context).push(route);
                        },
                        child: Text('Create an account')),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'By creating an account. I accept Hints',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.grey)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Terms of service',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey,
                        height: 1.5,
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
