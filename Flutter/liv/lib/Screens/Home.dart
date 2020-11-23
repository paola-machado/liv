import 'package:flutter/material.dart';
import 'package:liv/Components/appDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Card topArea() => Card(
        margin: EdgeInsets.all(10.0),
        elevation: 1.0,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      "POUPANÇA",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      r"R$ 1.500,00",
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                  ),
                ),
                SizedBox(height: 35.0),
              ],
            )),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.lightBlue, //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Carteira",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.lightBlue,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                topArea(),
                displayAccoutList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlineButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                  onPressed: () {},
                  child: Text("DÉBITO"),
                ),
                OutlineButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                  onPressed: () {},
                  child: Text("CRÉDITO"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container accountItems(
          String item, String charge, String dateString, String type,
          {Color oddColour = Colors.white}) =>
      Container(
        decoration: BoxDecoration(color: oddColour),
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(item, style: TextStyle(fontSize: 16.0)),
                Text(charge, style: TextStyle(fontSize: 16.0))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dateString,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),
          ],
        ),
      );

  displayAccoutList() {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          accountItems(
            "Picpay",
            r"- R$ 16,20",
            "10-11-20",
            "Débito",
            oddColour: const Color(0xFFF7F7F9),
          ),
          accountItems("Depósito joão", r"+ R$ 58,00", "15-11-20", "Crédito"),
          accountItems(
            "Amazon BR",
            r"- R$ 350,20",
            "15-11-20",
            "Débito",
            oddColour: const Color(0xFFF7F7F9),
          ),
          accountItems("Pizza", r"- R$ 25,00", "16-11-20", "Débito"),
          accountItems(
            "Supermercado",
            r"- R$ 86,98",
            "20-11-20",
            "Débito",
            oddColour: const Color(0xFFF7F7F9),
          ),
          accountItems(
            "Pagamento Ju",
            r"+ R$ 100,00",
            "21-11-20",
            "Crédito",
          ),
        ],
      ),
    );
  }
}
