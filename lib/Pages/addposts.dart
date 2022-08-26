import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Addpost extends StatelessWidget {
  const Addpost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> options = [
      {
        'categorey': 'BOOK',
        'option': 'Add a book',
        'image': 'images/cartoon1.png',
      },
      {
        'categorey': 'VIDEO',
        'option': 'Add a video',
        'image': 'images/cartoon2.png',
      },
      {
        'categorey': 'ARTICLE',
        'option': 'Add a article',
        'image': 'images/cartoon3.png',
      },
      {
        'categorey': 'PODCAST',
        'option': 'Add a podcast',
        'image': 'images/cartoon4.png',
      }
    ];

    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Color(0xff022048),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Become a psychologist',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Color(0xff022048),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 100,
                    child: Divider(
                      color: Color(0xff022048),
                      thickness: 1.5,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Divider(
                      color: Colors.grey[350],
                      thickness: .5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'What do you want to add on the platfolio',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff022048),
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: List.generate(options.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF8F3EC),
                      ),
                      width: 310,
                      child: Row(
                        children: [
                          Image.asset(
                            options[index]['image'],
                            height: 120,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: 194,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    options[index]['categorey'],
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                      color: Colors.redAccent[700],
                                    )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    options[index]['option'],
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Color(0xff022048),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
