import 'dart:convert';

// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

dynamic three = '';

class Apidata {
  // dynamic getData = '';
  getdata() async {
    dynamic getedData = await http.get(
        Uri.parse('https://photos.salerozana.com/api/catg'),
        headers: {"Content-Type": "application/json"});

    three = await jsonDecode(getedData.body);
    debugPrint('👉$three');
  }
}
