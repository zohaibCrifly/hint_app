import 'package:flutter/material.dart';
import 'package:hints/Pages/addposts.dart';
import 'package:hints/data/PostModel.dart';
import 'package:hints/widgets/posttile.dart';
import 'package:hints/widgets/userposttile.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.grey[200],
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xffF8F3EC),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        Text(
                          '@carlob',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Color(0xff022048),
                          )),
                        ),
                        InkWell(
                          onTap: () {
                            var route = new MaterialPageRoute(
                                builder: (BuildContext content) => Addpost());
                            Navigator.of(context).push(route);
                          },
                          child: Icon(
                            Icons.menu,
                            color: Color(0xff022048),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'images/user1.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Carlo Black',
                              style: TextStyle(
                                  color: Color(0xff022048),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 160,
                              child: Text(
                                'Bedroom Philospher. Swing Dancer. Avil Reader. Programmer. Generally interests in Psychology, Spirituallity, History, Sustainabilty and Humans :)',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Text('142',
                                          style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                                color: Color(0xff022048),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Likes',
                                        style: GoogleFonts.roboto(
                                            textStyle:
                                                TextStyle(color: Colors.grey)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          170,
                                ),
                                Column(
                                  children: [
                                    Text('7.4M',
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              color: Color(0xff022048),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Followers',
                                      style: GoogleFonts.roboto(
                                          textStyle:
                                              TextStyle(color: Colors.grey)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          170,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '142',
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              color: Color(0xff022048),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Following',
                                        style: GoogleFonts.roboto(
                                          textStyle:
                                              TextStyle(color: Colors.grey),
                                        )),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children:
                      postdata.map((e) => UserPostTile(dpost: e)).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
