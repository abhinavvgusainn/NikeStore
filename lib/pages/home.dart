import 'package:flutter/material.dart';
import 'package:nike_store/components/bottom_nav_bar.dart';
import 'package:nike_store/pages/cart_page.dart';
import 'package:nike_store/pages/shop_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  NavigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 221, 221),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'images/nike.png',
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey[800],
                  ),
                ),
                //other pages
                const Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.info),
                    title: Text('About'),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            )
          ],
        ),
      ),
      
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => NavigateBottomBar(index),
      ),
      body: _pages[_currentIndex],
    );
  }
}
