import 'package:etiket/theme.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String ket;

  DetailCard({required this.ket});

  // const DetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ket,
          style: regularTextStyle,
        ),
      ],
    );
  }
}
