import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/screens/home_screen.dart';

import '../widgets/custom_navbar.dart';
import 'account_screen.dart';
import 'cart.dart';
import 'favourite_screen.dart';



class LayOut extends StatefulWidget {
  const LayOut({super.key});

  @override
  State<LayOut> createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _pages = [
   const HomeScreen(),
    const FavouriteScreen(),
    const CartScreen(),
    const AccountScreen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(




      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: SafeArea(
        child: Column(
          children: [

            Expanded(child: _pages.elementAt(_selectedIndex)),
          ],
        ),
      ),
    );
  }
}