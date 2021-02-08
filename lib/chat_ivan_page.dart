import 'package:flutter/material.dart';

class ChatIvanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 480,
          height: 800,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/chat_ivan.jpg'))),
        ),
      ),
    );
  }
}
