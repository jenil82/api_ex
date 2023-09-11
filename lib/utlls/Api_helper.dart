import 'dart:convert';

import 'package:api_ex/screens/home/modal/Home_Modal.dart';
import 'package:http/http.dart' as http;

class ApiHelper
{
  static final helper = ApiHelper._();
  ApiHelper._();

  Future<Homemodal> Helperdata(String search)
  async {
    String Link = "https://pixabay.com/api/?key=39101963-99d40aec8e0eb7b19a0048dc5&q=$search";
    var responce =await http.get(Uri.parse(Link));
    var json = jsonDecode(responce.body);
    var data = Homemodal.fromJson(json);
    return data;
  }
}