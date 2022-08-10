import 'package:etiket/models/rekomen.dart';
import 'package:etiket/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class RekomenCard extends StatelessWidget {
  final Rekomen rekomen;

  const RekomenCard(this.rekomen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    rekomen.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/star.png',
                            width: 17,
                            height: 17,
                          ),
                          Text(
                            '${rekomen.rating}/5',
                            style: whiteTextStyle.copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rekomen.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 2),
              Text.rich(
                TextSpan(
                  text: 'Rp${rekomen.price}',
                  style: greenTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: ' / orang',
                        style: greyTextStyle.copyWith(fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                '${rekomen.village}, ${rekomen.subdistrict}',
                style: greyTextStyle,
                // font size default 14
              ),
            ],
          )
        ],
      ),
    );
  }
}
