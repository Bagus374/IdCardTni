import 'package:flutter/material.dart';
import 'const.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabBar({@required this.titles, this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: Colors.white60,
          ),
          Row(
            children: titles
                .map((e) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 42),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (onTap != null) {
                        onTap(titles.indexOf(e));
                      }
                    },
                    child: Text(
                      e,
                      style: (titles.indexOf(e) == selectedIndex)
                          ? whiteFontStyle.copyWith(
                          fontWeight: FontWeight.w500)
                          : greyFontStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child: Container(
                      width: 40,
                      height: 3,
                      margin: EdgeInsets.only(top: 13),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.5),
                          color: (titles.indexOf(e) == selectedIndex)
                              ? Colors.white
                              : Colors.transparent),
                    ),
                  )
                ],
              ),
            )
            ).toList(),
          )
        ],
      ),
    );
  }
}
