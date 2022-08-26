import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hints/Pages/welcome.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  Color textcolor = Color(0xff022048);
  double titlesize = 26;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffF8F3EC),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    Text(
                      'hints.',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        color: textcolor,
                        fontSize: titlesize,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'will help you grow your \nsocial skills',
                        style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(color: textcolor, fontSize: 18)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: textcolor,
                          padding: EdgeInsets.symmetric(vertical: 20)),
                      onPressed: () {
                        var route = new MaterialPageRoute(
                            builder: (BuildContext context) => Welcomepage());
                        Navigator.of(context).push(route);
                      },
                      child: Text(
                        'Start Yout Journey',
                        style: GoogleFonts.roboto(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Image.asset('images/gcartoon.png')
          ],
        ),
      ),
    );
  }
}
