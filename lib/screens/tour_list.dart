import 'package:etiket/screens/tour_detail.dart';
import 'package:flutter/material.dart';
import 'package:etiket/theme.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TourList extends StatelessWidget {
  const TourList({Key? key}) : super(key: key);

  final String url = 'http://192.168.100.85:8000/api/tours';

  Future getTours() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: edge),
      child: FutureBuilder(
        future: getTours(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: (snapshot.data as dynamic)['data'].length,
              itemBuilder: (context, index) {
                return Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Card(
                    elevation: 5,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TourDetail(
                                  tour: (snapshot.data as dynamic)['data']
                                      [index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            width: 130,
                            height: 110,
                            child: Image.network(
                              (snapshot.data as dynamic)['data'][index]
                                  ['image_url'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: edge),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  (snapshot.data as dynamic)['data'][index]
                                      ['name'],
                                  style: blackTextStyle.copyWith(fontSize: 18),
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      'Rp',
                                      style:
                                          greenTextStyle.copyWith(fontSize: 16),
                                    ),
                                    Text(
                                      (snapshot.data as dynamic)['data'][index]
                                          ['price'],
                                      style:
                                          greenTextStyle.copyWith(fontSize: 16),
                                    ),
                                    Text(
                                      '/ orang',
                                      style:
                                          greenTextStyle.copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  (snapshot.data as dynamic)['data'][index]
                                      ['village'],
                                  style: greyTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
