import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.yellow),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row & Columns"),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              color: Colors.red,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.yellow,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.green,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.blue,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}


/*

Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(height: 60, width: 60, color: Colors.red),
    Container(height: 60, width: 60, color: Colors.blue),
    Container(height: 60, width: 60, color: Colors.green),
    Container(height: 60, width: 60, color: Colors.black),
    Container(height: 60, width: 60, color: Colors.purple),
  ]
)
  Wrap(
  direction: Axis.vertical,
  alignment: WrapAlignment.start,
  // mainAxisAlignment: MainAxisAlignment.start,
  // crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(height: 60, width: 60, color: Colors.red),
    Container(height: 60, width: 60, color: Colors.blue),
    Container(height: 60, width: 60, color: Colors.green),
    Container(height: 60, width: 60, color: Colors.black),
    Container(height: 60, width: 60, color: Colors.purple),
    ],
  ),

*/