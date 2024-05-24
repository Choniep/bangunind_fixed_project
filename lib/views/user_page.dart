import 'package:bangunind_fixed_project/controllers/bottom_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(217, 213, 202, 1.0),
        ),
        child: Center(
          child: Column(
            children: [
              Text('Signed In As: ' + user.email!),
              MaterialButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Text('signout'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 2),
    );
  }
}
