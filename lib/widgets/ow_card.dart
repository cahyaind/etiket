import 'package:etiket/theme.dart';
import 'package:flutter/material.dart';

import '../models/ow.dart';

class OwCard extends StatelessWidget {
  // const OwCard({Key? key}) : super(key: key);

  final Ow ow;

  const OwCard(this.ow, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xfff6f7f8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  // 'assets/images/wisata1.jpg',
                  // change
                  ow.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                ow.isPopular ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 40,
                    height: 30,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/icon_star.png',
                        width: 17,
                        height: 17,
                      ),
                    ),
                  ),
                ) : Container(),
              ],
            ),
            SizedBox(height: 11),
            Text(
              // 'Majalengka',
              // change
              ow.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
