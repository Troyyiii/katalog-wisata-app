import 'package:aplikasi_katalog_wisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget> [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Image.asset(place.imageAsset),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    place.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget> [
                      Column(
                        children: <Widget> [
                          Icon(Icons.calendar_today),
                          Text(place.hariBuka),
                        ],
                      ),
                      Column(
                        children: <Widget> [
                          Icon(Icons.access_time),
                          Text(place.jamBuka),
                        ],
                      ),
                      Column(
                        children: <Widget> [
                          Icon(Icons.attach_money_rounded),
                          Text(place.harga),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    place.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                              "https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/monkasel.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/tupal.jpeg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/kelenteng.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
