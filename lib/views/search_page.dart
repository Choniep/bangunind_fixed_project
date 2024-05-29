import 'package:bangunind_fixed_project/controllers/bottom_nav_bar.dart';
import 'package:bangunind_fixed_project/models/design_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final List<DesignData> desain = [
    DesignData(
      judul: "Maizena",
      deskripsi:
          'Hunian modern dengan luas bangunan yang cukup luas untuk keluarga kecil',
      gambar: 'assets/images/architect/rumah3.jpg',
      luasbangun: 90,
      luastanah: 125,
      kamar: 2,
      toilet: 1,
      listrik: 1100,
      taman: 1,
      harga: 590000000,
    ),
    DesignData(
      judul: "Cocomelon",
      deskripsi: 'rumah minimalis untuk biaya minim',
      gambar: 'assets/images/architect/rumah2.jpg',
      luasbangun: 40,
      luastanah: 100,
      kamar: 3,
      toilet: 1,
      listrik: 1100,
      taman: 1,
      harga: 325000000,
    ),
    DesignData(
      judul: "Tifosi",
      deskripsi: 'Rumah nyaman untuk para tifosi scuderia ferrari',
      gambar: 'assets/images/architect/rumah1.jpg',
      luasbangun: 200,
      luastanah: 300,
      kamar: 3,
      toilet: 1,
      listrik: 3300,
      taman: 2,
      harga: 39500000000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(217, 213, 202, 1.0),
            ),
            height: MediaQuery.of(context).size.height - 60,
            child: Expanded(
                child: ListView.builder(
                    itemCount: desain.length,
                    itemBuilder: (context, index) {
                      final design = desain[index];
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail',
                              arguments: design);
                        },
                        child: Card(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(design.gambar),
                                        fit: BoxFit.fill),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  height: 270,
                                ),
                                Text(
                                  design.judul,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    Text('Building area: ' +
                                        design.luasbangun.toString()),
                                    Text(' | '),
                                    Text('Land Area: ' +
                                        design.luastanah.toString()),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                  ),
                                  height: 30,
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(design.harga.toString()),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(
        selectedItem: 1,
      ),
    );
  }
}
