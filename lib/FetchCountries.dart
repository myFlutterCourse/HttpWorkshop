import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:https/Country.dart';
import 'package:http/http.dart' as http;

Future<List<Country>> fetchCountries() async{
  final response = 
  await http.get(Uri.parse('https://restcountries.com/v3.1/all'));
  if(response.statusCode == 200){
  List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Country.fromJson(data)).toList();  
  }else{
    throw Exception('Failed to load Countries');
  }
  
}