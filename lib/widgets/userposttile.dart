import 'package:flutter/material.dart';
import 'package:hints/Pages/showpost.dart';
import 'package:hints/data/PostModel.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPostTile extends StatefulWidget {
  final Post dpost;
  const UserPostTile({Key? key, required this.dpost}) : super(key: key);

  @override
  _UserPostTileState createState() => _UserPostTileState();
}

class _UserPostTileState extends State<UserPostTile> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  widget.dpost.image,
                  height: 100.0,
                  width: 120.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.dpost.categoryTile,
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(color: Colors.deepOrangeAccent[700]),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          var route = new MaterialPageRoute(
                              builder: (BuildContext content) => ShowPost(
                                  postimage: widget.dpost.image,
                                  posttitle: widget.dpost.title,
                                  userimage: widget.dpost.userImage,
                                  username: widget.dpost.userName,
                                  postdate: widget.dpost.date,
                                  postdescription: widget.dpost.description));
                          Navigator.of(context).push(route);
                        },
                        child: Text(
                          widget.dpost.title,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Color(0xff022048),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      widget.dpost.tag == ''
                          ? Container()
                          : Container(
                              child: Row(
                              children: [
                                Text(
                                  widget.dpost.tag,
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(color: Colors.grey)),
                                ),
                              ],
                            )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '15 mint read .' + widget.dpost.date,
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Colors.grey)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Divider(
            height: 30,
            thickness: .5,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }
}
