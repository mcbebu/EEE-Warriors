import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninja_walkers/widgets/info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/Keith.png'),
            ),
            Text('Keith Zhang',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            Text(
              'Platinum',
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15,
                  color: Colors.black,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            PlatWidget(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
            QRWidget(),
          ],
        ),
      ),
      backgroundColor: Colors.orangeAccent.withOpacity(0.1),
    );
  }
}
