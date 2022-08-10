import 'package:etiket/models/ow.dart';
import 'package:etiket/models/rekomen.dart';
import 'package:etiket/models/tips.dart';
import 'package:etiket/widgets/bottom_navbar.dart';
import 'package:etiket/widgets/ow_card.dart';
import 'package:etiket/widgets/rekomen_card.dart';
import 'package:etiket/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: edge),
            // HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Temukan tempat wisata yang menarik',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 30),
            // WISATA TERPOPULER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Wisata Terpopuler',
                style: regularTextStyle.copyWith(fontSize: 17),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  OwCard(
                    Ow(
                      id: 1,
                      name: 'Panyaweyan',
                      imageUrl: 'assets/images/wisata1.jpg',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(width: 20),
                  OwCard(
                    Ow(
                      id: 2,
                      name: 'Cadas Gantung',
                      imageUrl: 'assets/images/wisata2.jpg',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(width: 20),
                  OwCard(
                    Ow(
                      id: 3,
                      name: 'Situ Cipanten',
                      imageUrl: 'assets/images/wisata3.jpg',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            SizedBox(height: 30),
            // REKOMENDASI WISATA
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Rekomendasi Wisata',
                style: regularTextStyle.copyWith(fontSize: 17),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  RekomenCard(
                    Rekomen(
                      id: 1,
                      name: 'Telaga Biru',
                      imageUrl: 'assets/images/rekomendasi1.jpg',
                      price: 15000,
                      village: 'Padaherang',
                      subdistrict: 'Sidangwangi',
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                  RekomenCard(
                    Rekomen(
                      id: 2,
                      name: 'Air Terjun Pelangi',
                      imageUrl: 'assets/images/rekomendasi2.jpg',
                      price: 25000,
                      village: 'Sukadana',
                      subdistrict: 'Argapura',
                      rating: 5,
                    ),
                  ),
                  SizedBox(height: 30),
                  RekomenCard(
                    Rekomen(
                      id: 3,
                      name: 'Bukit Kanaga',
                      imageUrl: 'assets/images/rekomendasi3.jpg',
                      price: 20000,
                      village: 'Cipulus',
                      subdistrict: 'Cikijing',
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // TIPS DAN PANDUAN
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Panduan',
                style: regularTextStyle.copyWith(fontSize: 17),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'Pedoman Aplikasi',
                      imageUrl: 'assets/images/tips1.png',
                      updatedAt: '07 Juli',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Tentang Majalengka',
                      imageUrl: 'assets/images/tips2.png',
                      updatedAt: '04 April',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70 + edge),
            
          ],
        ),
      ),
      floatingActionButton: Container(
                height: 65,
                width: MediaQuery.of(context).size.width - (2 * edge),
                margin: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                decoration: BoxDecoration(
                  color: bgColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbar(
                      imageUrl: 'assets/icons/home.png',
                      isActive: true,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/icons/email.png',
                      isActive: false,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/icons/card.png',
                      isActive: false,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/icons/favorite.png',
                      isActive: false,
                    ),
                  ],
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
