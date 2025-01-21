import 'package:currency_exchange_api_app/ui/Bottom_Navigations_Bar/Exchange.dart';
import 'package:currency_exchange_api_app/ui/Bottom_Navigations_Bar/home.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  Widget getView() {
    if (_selectedIndex == 0) {
      return const Home();
    }
    return const Exchange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Center(
          child: Text(
            "Money Currency Exchange",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
        ),
      ),
      body: getView(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_exchange), label: 'Exchange'),
          ]),
    );
  }
}
