import 'package:bangunind_fixed_project/models/design_data.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DesignData designArgs =
        (ModalRoute.of(context)!.settings.arguments) as DesignData;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Iconsax.back_square)),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(217, 213, 202, 1.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                designArgs.gambar,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    designArgs.judul,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                  Text(designArgs.deskripsi),
                  Row(
                    children: [
                      Text(
                          'building area: ' + designArgs.luasbangun.toString()),
                      Text(' | '),
                      Text('Land Area: ' + designArgs.luastanah.toString()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Iconsax.back_square),
                          Text(designArgs.kamar.toString() + 'bed'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Iconsax.back_square),
                          Text(designArgs.toilet.toString() + 'bed'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Iconsax.back_square),
                          Text(designArgs.listrik.toString() + 'bed'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Iconsax.back_square),
                          Text(designArgs.taman.toString() + 'bed'),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Rp' + designArgs.harga.toString(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/search');
                    },
                    color: Color(0xffff5630),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Contact Whatsapp",
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
