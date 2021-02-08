import 'package:flutter/material.dart';
import 'package:idcard_tni/chat_page.dart';
import 'package:idcard_tni/home_page.dart';
import 'package:idcard_tni/news_page.dart';
import 'package:idcard_tni/wallet_page.dart';
import 'custombottombar.dart';


class MainPage extends StatefulWidget {
  final int initialPage;
  MainPage({this.initialPage = 0});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
                color: Color(0xffFAFAFC)
              )),
          SafeArea(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
                children: [
                  Center(
                    child: HomePage(),
                  ),
                  Center(
                    child: ChatPage(),
                  ),
                  Center(
                    child: NewsPage(),
                  ),
                  Center(
                    child: WalletPage(),
                  ),
                ],
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),
    );

  }
}
