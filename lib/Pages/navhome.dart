import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hints/Pages/categorey.dart';
import 'package:hints/Pages/postlist.dart';
import 'package:hints/Pages/profile.dart';
import 'package:hints/Pages/search.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  List<bool> selected = [true];
  List<Map> navoption = [
    {
      'icon': Icons.home_outlined,
      'activeicon': Icons.home,
      'path': PostList(),
    },
    {
      'icon': Icons.search,
      'activeicon': Icons.search_rounded,
      'path': Search(),
    },
    {
      'icon': Icons.bookmark_outline_outlined,
      'activeicon': Icons.bookmark,
      'path': CategoreyPost(),
    },
    {
      'icon': Icons.person_outline,
      'activeicon': Icons.person,
      'path': Profile(),
    }
  ];
  int selectedpage = 0;

  onchange(int current) {
    setState(() {
      for (int i = 0; i < selected.length; i++) {
        if (current == i) {
          selected[i] = true;
          selectedpage = current;
        } else {
          selected[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            child: navoption[selectedpage]['path'],
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(navoption.length, (index) {
                selected.add(false);
                return InkWell(
                  onTap: () {
                    onchange(index);
                  },
                  child: Icon(
                    selected[index]
                        ? (navoption[index]['activeicon'])
                        : (navoption[index]['icon']),
                    size: selected[index] ? 32 : 30,
                    color: Color(0xff022048),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
