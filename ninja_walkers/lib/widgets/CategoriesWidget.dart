import 'package:flutter/material.dart';

// class CategoriesWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     List categories = ['Makeup','Magazines', 'Shoes',
//       'Stationary','Handbags','Books','Watches','Backpacks'];
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           for(int i=0; i < 8; i++)
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 10),
//               padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/$i.png",
//                     width:40,
//                     height: 40,
//                   ),
//                   Text(
//                     categories[i],
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 17,
//                       color:Color(0xFF072E54),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List categories = ['Map'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10),
            // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/maps.png",
                  width: 410,
                  height: 610,
                ),
                // Text(
                // categories[0],
                // style: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 17,
                //   color: Color(0xFF072E54),
                // ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
