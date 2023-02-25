import 'package:flutter/material.dart';
import 'package:ninja_walkers/widgets/CategoriesWidget.dart';
import 'package:ninja_walkers/widgets/ItemsWidget.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  static final TextEditingController searchController = TextEditingController();

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Custom App Bar Widget
          Container(
            padding: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
                color: Color(0xfff6f1e4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      //Search Widget
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          controller: MarketPage.searchController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (() => {setState(() {})}),
                        child: Icon(
                          Icons.search,
                          size: 27,
                          color: Color(0xFF072E54),
                        ),
                      ),
                    ],
                  ),
                ),

                //Categories
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Ninja Dropoff Points",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF072E54)),
                  ),
                ),
                // Dropoff Widget
                CategoriesWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Catalogue",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF072E54),
                    ),
                  ),
                ),
                //ItemsWidget
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
