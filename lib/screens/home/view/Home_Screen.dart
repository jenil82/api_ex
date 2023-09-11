import 'package:api_ex/screens/home/controler/home_Contreoler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    HomeControler controler = Get.put(HomeControler());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: controler.txtSearch,
            decoration: InputDecoration(
              prefixIcon: IconButton(onPressed: () {
                setState(() {
                  controler.search = controler.txtSearch.text;
                  controler.controlerdata();
                });
              }, icon: const Icon(Icons.search))
            ),
          ),
        ),
        body: FutureBuilder(
          future: controler.controlerdata(),
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: controler.homemodal!.hits!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.network("${controler.homemodal!.hits![index].largeImageUrl}"),
                );
              },);
          },
        ),
      ),
    );
  }
}
