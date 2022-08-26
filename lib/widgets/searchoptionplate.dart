import 'package:flutter/material.dart';
import 'package:hints/data/serchoption.dart';
import 'package:google_fonts/google_fonts.dart';

class SeachOptionPlate extends StatelessWidget {
  final SeacrhOption searchlist;
  const SeachOptionPlate({Key? key, required this.searchlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffF8F3EC),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 220,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              Image.asset(
                searchlist.optionimage,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 125,
                child: Text(
                  searchlist.optionname,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Color(0xff022048),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
