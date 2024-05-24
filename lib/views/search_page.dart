import 'package:bangunind_fixed_project/controllers/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(217, 213, 202, 1.0),
        ),
        child: Center(child: Text('Search Page')),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 1),
    );
  }
}
