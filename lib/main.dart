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
        appBarTheme: const AppBarTheme(color: Colors.orange),
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
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Grapes', 'Banana'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.red,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.amber,
                  padding: const EdgeInsets.all(10),
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://expletivearchive.com/wp-content/uploads/2020/07/mGJ9St.jpg"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Talha Anjum",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("My files"),
                iconColor: Colors.amber,
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text("My Profile"),
                iconColor: Colors.amber,
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("My Shared with me"),
                iconColor: Colors.amber,
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text("My Favourites"),
                iconColor: Colors.amber,
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                iconColor: Colors.amber,
                title: Text("My Trash"),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text("My Uploads"),
                iconColor: Colors.amber,
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
                iconColor: Colors.amber,
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                iconColor: Colors.amber,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Dismisible Widget"),
        backgroundColor: Colors.red,
        elevation: 3,
      ),
      body: Container(
        child: const Center(
          child: Text("Hi Lokesh!"),
        ),
      ),
    );
  }
}
