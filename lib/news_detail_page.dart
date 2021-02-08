import 'package:flutter/material.dart';


class NewsDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: 480,
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/News 2.jpg')
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
