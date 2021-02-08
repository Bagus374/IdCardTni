import 'package:flutter/material.dart';
class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:700,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage("images/Wallet-2.jpg")
          )
        ),
      )
      
    );
  }
}
