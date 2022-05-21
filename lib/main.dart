// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Stock Average Price Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _unit1 = TextEditingController(text: "");
  final TextEditingController _unit2 = TextEditingController(text: "");
  final TextEditingController _price1 = TextEditingController(text: "");
  final TextEditingController _price2 = TextEditingController(text: "");

  // late var unit1 = 0, unit2 = 0, price1 = 0.0, price2 = 0.0, averagePrice;
  var unit1,
      unit2,
      price1,
      price2,
      averagePrice = 0.0,
      totalPrice,
      totalUnits,
      firstTotalAmount,
      secondTotalAmount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                      child: Image.asset(
                    'assets/stockcandle.png',
                    width: 100,
                    height: 100,
                  )),
                ),
                const Text(
                  "First Buy: ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _unit1,
                  decoration: InputDecoration(
                      // ignore: prefer_const_constructors
                      border: OutlineInputBorder(),
                      labelText: "Unit",
                      hintText: "Enter the Units",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      // ignore: prefer_const_constructors
                      hintStyle: TextStyle(
                        color: Colors.black,
                      )),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _price1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Price",
                      hintText: "Enter the Price",
                      prefixIcon: Icon(
                        Icons.currency_rupee,
                        color: Colors.green,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black,
                      )),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text("Second Buy: "),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _unit2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Unit",
                      hintText: "Enter the Units",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black,
                      )),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _price2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Price",
                    hintText: "Enter the Price",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(
                      Icons.currency_rupee,
                      color: Colors.green,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                // Text("Total Amount Invested : $totalPrice"),
                // Text("Total Units : $totalUnits"),
                // Text("Total Amount Invested in First Buy : $firstTotalAmount"),
                // Text(
                //     "Total Amount Invested in Second Buy : $secondTotalAmount"),
                Text(
                  "Stock Average Price : ${averagePrice.toStringAsFixed(2)}",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        // onPressed: _calculateStockAveragePrice,
        onPressed: (() {
          setState(() {
            unit1 = int.parse(_unit1.text);
            unit2 = int.parse(_unit2.text);
            price1 = double.parse(_price1.text);
            price2 = double.parse(_price2.text);
            totalUnits = unit1 + unit2;
            firstTotalAmount = unit1 * price1;
            secondTotalAmount = unit2 * price2;
            totalPrice = firstTotalAmount + secondTotalAmount;
            averagePrice = totalPrice / totalUnits;
          });
        }),
        tooltip: 'Increment',
        child: const Icon(Icons.calculate),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
