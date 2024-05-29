import 'package:bangunind_fixed_project/models/design_data.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';

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
            icon: Icon(Icons.arrow_back)),
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
                fit: BoxFit.cover,
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.bedtime),
                          Text(designArgs.kamar.toString() + ' bedroom'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.clean_hands),
                          Text(designArgs.toilet.toString() + ' bathroom'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.bolt),
                          Text(designArgs.listrik.toString() + ' electricity'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.eco),
                          Text(designArgs.taman.toString() + ' garden'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Rp' + designArgs.harga.toString(),
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    // ignore: deprecated_member_use
                    onPressed: () => launch(
                        'https://api.whatsapp.com/send/?phone=6287777588573&text&type=phone_number&app_absent=0'),
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
