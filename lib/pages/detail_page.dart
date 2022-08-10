import 'package:etiket/widgets/detail_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const url = 'https://goo.gl/maps/m73uSA6WfyKTpUub8';
    _launchUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Oops $url';
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/rekomendasi2.jpg',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // widget berada di ujung kiri dan ujung kanan
                          children: [
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start, // rata kiri
                              children: [
                                Text(
                                  'Air Terjun Pelangi',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text.rich(
                                  TextSpan(
                                    text: 'Rp20000',
                                    style:
                                        greenTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: ' / orang',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/star.png',
                                  width: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/icons/star.png',
                                  width: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/icons/star.png',
                                  width: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/icons/star.png',
                                  width: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/icons/star.png',
                                  width: 20,
                                  color: Color(0xff989ba1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      // DETAIL WISATA
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Detail Wisata',
                          style: regularTextStyle.copyWith(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Wrap(
                          children: [
                            DetailCard(
                              ket:
                                  'Berjarak kurang lebih 16 kilometer dari pusat kota Majalengka, dengan estimasi waktu tempuh 30 menit. Air terjun yang diapit oleh dua dinding batu yang mirip dengan lava itu menyajikan kesegaran yang berbeda dari air terjun yang lainnya.',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      // LIST FOTO DETAIL WISATA
                      Padding(
                        padding: EdgeInsets.only(
                          left: edge,
                        ),
                        child: Text(
                          'Foto',
                          style: regularTextStyle.copyWith(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection:
                              Axis.horizontal, // scroll ke kiri kanan
                          children: [
                            SizedBox(width: edge),
                            Image.asset(
                              'assets/images/detail1.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18),
                            Image.asset(
                              'assets/images/detail2.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18),
                            Image.asset(
                              'assets/images/detail2.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18),
                            Image.asset(
                              'assets/images/detail3.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: edge),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                // LOKASI WISATA
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Lokasi',
                    style: regularTextStyle.copyWith(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Desa Sukasari Kaler, Kecamatan Argapura',
                        style: greyTextStyle,
                      ),
                      InkWell(
                        onTap: () {
                          _launchUrl(url);
                        },
                        child: Image.asset(
                          'assets/buttons/maps.png',
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    )),
                    child: Text(
                      'Pesan Tiket',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      // navigator untuk kembali ke halaman sebelumnya
                    },
                    child: Image.asset(
                      'assets/buttons/back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/buttons/love.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
