import 'package:flutter/material.dart';

class SatuanPage extends StatefulWidget {
  final Function willPop;

  SatuanPage(this.willPop);

  @override
  _SatuanPageState createState() => _SatuanPageState();
}

class _SatuanPageState extends State<SatuanPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: widget.willPop,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Image.asset("images/tni-al 3.jpg")
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
