import 'package:flutter/material.dart';
import 'package:hints/Pages/addposts.dart';
import 'package:hints/data/PostModel.dart';
import 'package:hints/widgets/posttile.dart';
import 'package:google_fonts/google_fonts.dart';

class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  //var plist = Post.fromJson({});

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.grey[200],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'hints.',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff022048),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                  InkWell(
                    onTap: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext content) => Addpost());
                      Navigator.of(context).push(route);
                    },
                    child: Icon(
                      Icons.filter_list,
                      color: Color(0xff022048),
                      size: 25,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: postdata.map((e) => PostTile(dpost: e)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
