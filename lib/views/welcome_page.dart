import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(217, 213, 202, 1.0)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 160,
              ),
              Column(
                children: [
                  Text(
                    'Briliantly',
                    style: TextStyle(fontSize: 56, fontFamily: 'PPEiko'),
                  ),
                  Text(
                    'Designed',
                    style: TextStyle(fontSize: 56, fontFamily: 'PPEiko'),
                  ),
                  Text(
                    'Homes',
                    style: TextStyle(
                        fontSize: 56,
                        fontFamily: 'PPEiko',
                        color: Color.fromRGBO(227, 62, 60, 1.0)),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  child: Text("Hai")),
            ],
          ),
        ),
      ),
    );
  }
}
