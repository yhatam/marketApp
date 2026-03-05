import 'package:flutter/material.dart';
import 'package:marketapp/my_cart.dart';
import 'package:marketapp/products.dart';
import 'package:marketapp/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Project',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeContentIndex = 0;
  late List<Widget> _contents;

  @override
  void initState() {
    super.initState();
    _contents = [
      Products(),
      SearchPage(),
      MyCart(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red.shade400),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Shopping Center",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
      body: _contents[_activeContentIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Muhammed Yediç Hatam"),
              accountEmail: Text("muhammedyedic@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/123.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              decoration: BoxDecoration(
                color: Colors.red[400],
              ),
            ),
            ListTile(
              title: Text("My Orders"),
              onTap: () {},
            ),
            ListTile(
              title: Text("My Discount"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Quit"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeContentIndex,
        selectedItemColor: Colors.red.shade400,
        unselectedItemColor: Colors.grey.shade600,
        selectedFontSize: 18,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "My Cart"),
        ],
        onTap: (int clickedButtonPositionIndex) {
          setState(() {
            _activeContentIndex = clickedButtonPositionIndex;
          });
        },
      ),
    );
  }
}
