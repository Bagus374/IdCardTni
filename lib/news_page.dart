import 'package:flutter/material.dart';


class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: 480,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/NewsHeader.jpg')
                  )
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'news_detail');
                },
                child: Container(
                  width: 480,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/NewsList-1.jpg')
                    )
                  ),
                ),
              ),
              Container(
                width: 480,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/NewsList-2.jpg')
                    )
                ),
              ),
            ],

          ),
        )
    );
  }
}
