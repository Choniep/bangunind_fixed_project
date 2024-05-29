import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final List _bannerImage = [];

  getBaner() {
    return _firestore
        .collection('banners')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        setState(() {
          _bannerImage.add(doc['image']);
        });
      });
    });
  }

  @override
  void initState() {
    getBaner();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(277, 62, 60, 1.0),
              borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: PageView.builder(
              itemCount: _bannerImage.length,
              itemBuilder: (context, index) {
                return Image.network(
                  _bannerImage[index],
                  fit: BoxFit.cover,
                );
              })),
    );
  }
}
