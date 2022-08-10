import 'package:etiket/pages/homepage.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/etiket.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 90),
                  Text(
                    'Explore Objek Wisata Majalengka',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Bayar menggunakan Online Payment',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homepage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          )),
                      child: Text(
                        "Telusuri",
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
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
