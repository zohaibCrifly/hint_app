import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hints/Pages/addposts.dart';
import 'package:hints/Pages/search.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoreyPost extends StatefulWidget {
  const CategoreyPost({Key? key}) : super(key: key);

  @override
  _CategoreyPostState createState() => _CategoreyPostState();
}

class _CategoreyPostState extends State<CategoreyPost> {
  String curennttab = 'All';
  List selected = [true];
  List tabs = ['All', 'Articles', 'Books', 'Videos', 'Podcasts'];

  // Radius get radius => null;
  onchange(int current, String selectedtab) {
    setState(() {
      for (int a = 0; a < selected.length; a++)
        if (current == a) {
          selected[a] = true;
          curennttab = selectedtab;
        } else
          selected[a] = false;
    });
  }

  displayofpost(String a) {
    if (a == 'Books')
      return Wrap(
        children: [
          for (int a = 0; a < 10; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image2.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
        ],
      );
    if (a == 'Videos')
      return Wrap(
        children: [
          for (int a = 0; a < 10; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image3.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
        ],
      );
    if (a == 'Articles')
      return Wrap(
        children: [
          for (int a = 0; a < 10; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                // clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image1.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
        ],
      );
    if (a == 'Podcasts')
      return Wrap(
        children: [
          for (int a = 0; a < 10; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image5.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
        ],
      );
    if (a == 'All')
      return Wrap(
        children: [
          for (int a = 0; a < 3; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image1.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          for (int a = 0; a < 2; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image2.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          for (int a = 0; a < 4; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image3.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          for (int a = 0; a < 2; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image4.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          for (int a = 0; a < 2; a++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/image5.jpg',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Saved',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Color(0xff022048),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          var route = new MaterialPageRoute(
                              builder: (BuildContext content) => Search());
                          Navigator.of(context).push(route);
                        },
                        child: Icon(
                          Icons.search_outlined,
                          color: Color(0xff022048),
                          size: 25,
                        ),
                      ),
                      SizedBox(width: 20),
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: List.generate(tabs.length, (index) {
                  selected.add(false);
                  return Padding(
                    padding: selected[index]
                        ? const EdgeInsets.symmetric(vertical: 1)
                        : const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        onchange(index, tabs[index]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(width: 0.5, color: Colors.grey))
                            //borderRadius: BorderRadius.circular(5),
                            ),
                        child: Container(
                          clipBehavior:
                              selected[index] ? Clip.antiAlias : Clip.none,
                          padding: selected[index]
                              ? EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 9)
                              : EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: selected[index]
                                ? Colors.white
                                : Colors.grey[200],
                          ),
                          child: Text(tabs[index], style: GoogleFonts.roboto()),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: displayofpost(curennttab),
              ),
            ),
          )
        ],
      ),
    );
  }
}
