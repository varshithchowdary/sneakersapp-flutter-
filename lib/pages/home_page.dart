import 'package:ecommerce/components/bottom_nav_bar.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'intro_page.dart'; // Import the IntroPage

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selected = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 25),
                  child: DrawerHeader(
                    child: Image.asset(
                      'lib/images/img.png',
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 25.0),
                  child: ListTile(
                    leading: const Icon(Icons.home, color: Colors.white),
                    title: const Text('Home',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroPage()),
                      );
                    },
                  ),
                ),
                // Adding more ListTile widgets
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text('About', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0, top: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout_outlined, color: Colors.white),
                title: Text('Logout',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Mybottom(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[selected],
    );
  }
}
