import 'package:etiket/theme.dart';
import 'package:flutter/material.dart';

class TourDetail extends StatelessWidget {
  // const TourDetail({Key? key}) : super(key: key);

  // constuctor
  final Map tour;
  TourDetail({required this.tour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              tour['image_url'],
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(height: 328),
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
                                  tour['name'],
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                ),
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      'Rp',
                                      style:
                                          blueTextStyle.copyWith(fontSize: 16),
                                    ),
                                    Text(
                                      tour['price'],
                                      style:
                                          blueTextStyle.copyWith(fontSize: 16),
                                    ),
                                    Text(
                                      '/ orang',
                                      style:
                                          blueTextStyle.copyWith(fontSize: 16),
                                    ),
                                  ],
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
                            Text(
                              tour['description'],
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
                const SizedBox(height: 30),
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
                const SizedBox(height: 6),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    children: [
                      Text(
                        tour['village'],
                        style: greyTextStyle,
                      ),
                      Text(", ", style: greyTextStyle),
                      Text(
                        tour['subdistrict'],
                        style: greyTextStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
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
          ],
        ),
      ),
    );
  }
}
