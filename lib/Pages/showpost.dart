import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowPost extends StatelessWidget {
  final String postimage,
      posttitle,
      userimage,
      username,
      postdate,
      postdescription;

  const ShowPost(
      {Key? key,
      required this.postimage,
      required this.posttitle,
      required this.userimage,
      required this.username,
      required this.postdate,
      required this.postdescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffF8F3EC),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(postimage),
                fit: BoxFit.cover,
              )),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey[400],
                          )),
                      Icon(Icons.menu, color: Colors.grey[400]),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    posttitle,
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff022048),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          userimage,
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        username,
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Colors.grey)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        postdate,
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Colors.grey)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipOval(
                        child: Container(
                          color: Colors.grey,
                          width: 5,
                          height: 5,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '65',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Colors.grey)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    postdescription,
                    style: GoogleFonts.roboto(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
