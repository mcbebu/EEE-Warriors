import 'package:flutter/material.dart';
import 'package:badges/badges.dart';


class HomeAppBar extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Container(
      color: Colors.orangeAccent.withOpacity(0.3),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              "Nanyang Marche",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF072E54),
              ),
            ),
          ),
          Spacer(),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context,"logoutPage");
              },
              child: Icon(
                Icons.logout_outlined,
                size: 32,
                color: Color(0xFF072E54),
              ),
            ),

        ],
      ),
    );
  }
}