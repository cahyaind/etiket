import 'package:etiket/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {

  final String imageUrl;
  final bool isActive;

  BottomNavbar({required this.imageUrl, required this.isActive});

  // const BottomNavbar(, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        Spacer(),
        isActive ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: blueColor,
            borderRadius: BorderRadius.circular(1000),
          ),
        ) : Container(),
      ],
    );
  }
}
