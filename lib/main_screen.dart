import 'package:aplikasi_katalog_wisata/tourism_list.dart';
import 'package:aplikasi_katalog_wisata/done_tourism_list.dart';
import 'package:aplikasi_katalog_wisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  final List<TourismPlace> doneTourismPlaceList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Surabaya"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DoneTourismList();
                }),
              );
            },
          )
        ],
      ),
      body: TourismList(),
    );
  }
}