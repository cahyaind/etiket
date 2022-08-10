import 'package:etiket/models/ow.dart';
import 'package:etiket/widgets/ow_card.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
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
              // REKOMENDASI WISATA
            ],
          ),
        ),
      ),
    );
  }
}
