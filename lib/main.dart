import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home/view/Home_Screen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen(),),
      ],
    ),
  );
}