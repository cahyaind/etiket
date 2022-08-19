import 'dart:convert';

import 'package:etiket/models/rekomen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RekomenProvider extends ChangeNotifier {
  // function untuk fetching data
  getRekomenTours() async {
    // untuk menghasilkan request dari http kita

    final String url = 'http://192.168.100.85:8000/api/tours';

    var result = await http.get(Uri.parse(url));

    print(result.statusCode);
    print(result.body);

    if(result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Rekomen> rekomens = data.map((item) => Rekomen.fromJson(item)).toList();
      return rekomens;
    } else {
      return <Rekomen>[];
    }
  }
}
