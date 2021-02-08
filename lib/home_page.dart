import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idcard_tni/customtabbar.dart';
import 'package:idcard_tni/finance_page.dart';
import 'package:idcard_tni/office_page.dart';
import 'package:idcard_tni/satuan_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  int _currentIndex = 0;
  int i=0;
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    //onTabTapped(widget.backIndex);
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            //Image.asset('images/Home-card.jpg', width: 500,height: 300,),
            Container(
              width: 480,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/Home-card.jpg"))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton.icon(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                    onPressed: null,
                    icon: Icon(
                      Icons.radio_button_checked,
                      color: Colors.redAccent,
                    ),
                    label: Text(
                      "Panic Button",
                      style: TextStyle(color: Colors.white),
                    )),
                RaisedButton.icon(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: null,
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: Colors.redAccent,
                    ),
                    label: Text(
                      "GPS Tracking",
                      style: TextStyle(color: Colors.white),
                    )),
                RaisedButton.icon(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: null,
                    icon: Icon(
                      Icons.check_box_outlined,
                      color: Colors.redAccent,
                    ),
                    label: Text(
                      "Absensi",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          CustomTabBar(
            titles: ['Satuan','Office','Finance'],
            selectedIndex: _currentIndex,
            onTap: (index){
              setState(() {
                _currentIndex = index;
                if (_currentIndex==0){
                  Container(
                    width: 480,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/Home Satuan.jpg')
                      )
                    ),
                    /*child:
                    Image.asset("images/Home Satuan.jpg"),*/
                  );
                } else if (_currentIndex==1){
                  Container(
                    child:
                    Image.asset("images/Home Satuan.jpg"),
                  );
                }
              });
            },
          )
          ],
        ),
      ),
      /*bottomNavigationBar: ConvexAppBar(
          initialActiveIndex: i,
          items:[
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.messenger_outline_rounded, title: 'Chat'),
            TabItem(icon: Icons.description_outlined, title: 'News'),
            TabItem(icon: Icons.account_balance_wallet, title: 'Wallet')
          ],
          onTap: (i) async {
            print("click index ${i}");
            if (i==0) {
              Navigator.pushNamed(context, "home");
            } else if (i==1) {
               Navigator.pushNamed(context, "chat");
            }else if (i==2) {
              Navigator.pushNamed(context, "news");
            }else if (i==3){
              Navigator.pushNamed(context, "wallet");
            }
          }),*/
    );
  }

}
