import 'package:flutter/material.dart';
import 'package:hints/Pages/navhome.dart';
import 'package:hints/Pages/postlist.dart';
import 'package:hints/data/hintsdata.dart';
import 'package:hints/widgets/hintselectoption.dart';
import 'package:google_fonts/google_fonts.dart';

class Hintselection extends StatefulWidget {
  const Hintselection({Key? key}) : super(key: key);

  @override
  _HintselectionState createState() => _HintselectionState();
}

class _HintselectionState extends State<Hintselection> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffF8F3EC),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'I want to know about...',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Color(0xff022048),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                      children: hintslist
                          .map((e) => Hintoption(hintoption: e))
                          .toList())
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    var route = new MaterialPageRoute(
                        builder: (BuildContext content) => NavHome());
                    Navigator.of(context).push(route);
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      primary: Color(0xff022048)),
                  child: Text('Continue', style: GoogleFonts.roboto())),
            )
          ],
        ),
      ),
    );
  }
}
