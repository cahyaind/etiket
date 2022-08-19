import 'package:etiket/models/ow.dart';
import 'package:etiket/models/rekomen.dart';
import 'package:etiket/models/tips.dart';
import 'package:etiket/providers/rekomen_provider.dart';
import 'package:etiket/screens/tour_detail.dart';
import 'package:etiket/screens/tour_list.dart';
import 'package:etiket/theme.dart';
import 'package:etiket/widgets/bottom_navbar.dart';
import 'package:etiket/widgets/ow_card.dart';
import 'package:etiket/widgets/rekomen_card.dart';
import 'package:etiket/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../theme.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
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
            const SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Temukan tempat wisata yang menarik',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            // WISATA TERPOPULER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Wisata Terpopuler',
                style: regularTextStyle.copyWith(fontSize: 17),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  OwCard(
                    Ow(
                      id: 1,
                      name: 'Panyaweyan',
                      imageUrl: 'assets/images/wisata1.jpg',
                      isPopular: false,
                    ),
                  ),
                  const SizedBox(width: 20),
                  OwCard(
                    Ow(
                      id: 2,
                      name: 'Cadas Gantung',
                      imageUrl: 'assets/images/wisata2.jpg',
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(width: 20),
                  OwCard(
                    Ow(
                      id: 3,
                      name: 'Situ Cipanten',
                      imageUrl: 'assets/images/wisata3.jpg',
                      isPopular: false,
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // REKOMENDASI WISATA
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Rekomendasi Wisata',
                style: regularTextStyle.copyWith(fontSize: 17),
              ),
            ),
            const SizedBox(height: 16),
            // LIST WISATA DI REKOMENDASI WISATA
            const TourList(),
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
