import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hints/data/hintsdata.dart';

class Hintoption extends StatefulWidget {
  final Hintdata hintoption;
  const Hintoption({Key? key, required this.hintoption}) : super(key: key);

  @override
  _HintoptionState createState() => _HintoptionState();
}

class _HintoptionState extends State<Hintoption> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.deepOrangeAccent[700],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            widget.hintoption.hintslabel,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: selected ? Colors.grey : Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
