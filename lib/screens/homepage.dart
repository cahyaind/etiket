import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String url = 'http://192.168.100.85:8000/api/tours';

  Future getTours() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: FutureBuilder(
        future: getTours(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: (snapshot.data as dynamic)['data'].length,
              itemBuilder: (context, index) {
                return Text((snapshot.data as dynamic)['data'][index]['name']);
              },
            );
          } else {
            return Text('failed');
          }
        },
      ),
    );
  }
}
