import 'package:flutter/material.dart';
import 'package:nanyang_marche/pages/ProfilePage.dart';
import 'package:nanyang_marche/pages/chats/chatDetails.dart';
import 'package:nanyang_marche/pages/marketPage.dart';
import 'package:nanyang_marche/pages/uploadPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentInd = 0;
  final screens = [MarketPage(), UploadPage(), ChatDetailPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Row(children: [
          Image.asset(
            'assets/images/ninja.png',
            fit: BoxFit.cover,
            height: 50,
            width: 135,
          ),
        ]),
        automaticallyImplyLeading: false,
      ),
      body: screens[currentInd],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (index) => setState(() => currentInd = index),
          height: 60,
          color: Colors.red,
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.upload,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.chat,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.account_box,
              size: 30,
              color: Colors.white,
            ),
          ]),
    );
  }
}
