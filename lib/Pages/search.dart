import 'package:flutter/material.dart';
import 'package:hints/data/serchoption.dart';
import 'package:hints/widgets/searchoptionplate.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.grey[200],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find your answer',
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
                decoration: InputDecoration(
                    focusColor: Colors.red,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search by theme, qustion etc.",
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Wrap(
                  children: spdatat
                      .map((e) => SeachOptionPlate(
                            searchlist: e,
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
