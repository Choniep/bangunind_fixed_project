import 'package:bangunind_fixed_project/controllers/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(217, 213, 202, 1.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Find The', style: TextStyle(fontSize: 36),),
                    Text('Perfect Home', style: TextStyle(fontSize: 36),),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(277, 62, 60, 1.0),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                      ),
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                      onPressed: () {},
                      color: Color(0xffff5630),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Choose a house",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      textColor: Color(0xffffffff),
                      height: 40,
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: () {}, child: Text("Our Partner", style: TextStyle(color: Colors.black, fontSize: 24),)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(14, 36, 50, 1.0)
                ),
                width: MediaQuery.of(context).size.width,
                height: 200,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 0),
    );
  }
}
