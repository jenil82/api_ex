import 'package:api_ex/screens/home/modal/Home_Modal.dart';
import 'package:api_ex/utlls/Api_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeControler extends GetxController
{

  Homemodal? homemodal;
  String search = "modi";
  TextEditingController txtSearch = TextEditingController();

  Future<void> controlerdata()
  async {
     homemodal = await ApiHelper.helper.Helperdata(search);
  }
}