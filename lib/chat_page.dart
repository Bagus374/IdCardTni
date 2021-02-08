import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Chat",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 32,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              //print('Ivan');
              Navigator.pushNamed(context, 'chat_ivan');

            },
            child: Container(
              width: 430,
              height: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/ListView-Ivan Chandra.jpg'))),
            ),
          ),
          Container(
            width: 480,
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/ListUser-2.jpg')
              )
            ),
          )
        ],
      ),
    );
  }
}
