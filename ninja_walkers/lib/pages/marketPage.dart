import 'package:flutter/material.dart';
import 'package:ninja_walkers/widgets/CategoriesWidget.dart';

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
        body: ListView(children: [
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

            Container(
              height: 35,
              margin: const EdgeInsets.only(
                left: 150,
                right: 150,
                bottom: 25,
              ),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2))
                  ]),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.focused))
                      return Colors.red;
                    return null; // Defer to the widget's default.
                  }),
                ),
                onPressed: () {},
                child: Text(
                  'Filter',
                  style: const TextStyle(
                      letterSpacing: 0.1,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            DataTable(columns: [
              DataColumn(
                label: Text('P-ID'),
              ),
              DataColumn(
                label: Text('Address'),
              ),
              DataColumn(
                label: Text('Weight'),
              ),
              DataColumn(
                label: Text('Size'),
              ),
            ], rows: [
              DataRow(cells: [
                DataCell(Text('270')),
                DataCell(Text('Yishun St 27')),
                DataCell(Text('0.74kg')),
                DataCell(Text('20x20')),
              ]),
              DataRow(cells: [
                DataCell(Text('293')),
                DataCell(Text('Yishun St 13')),
                DataCell(Text('0.93kg')),
                DataCell(Text('70x80')),
              ]),
              DataRow(cells: [
                DataCell(Text('451')),
                DataCell(Text('Yishun St 12')),
                DataCell(Text('1kg')),
                DataCell(Text('200x5')),
              ]),
              DataRow(cells: [
                DataCell(Text('986')),
                DataCell(Text('Yishun St 85')),
                DataCell(Text('0.5kg')),
                DataCell(Text('3x27')),
              ])
            ])
          ],
        ),
      )
    ]));
  }
}
