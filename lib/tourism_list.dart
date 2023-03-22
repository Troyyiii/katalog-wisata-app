import 'package:aplikasi_katalog_wisata/done_tourism_list.dart';
import 'package:aplikasi_katalog_wisata/latihan.dart';
import 'package:aplikasi_katalog_wisata/list_item.dart';
import 'package:aplikasi_katalog_wisata/model/tourism_place.dart';
import 'package:aplikasi_katalog_wisata/provider/done_tourism_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();

}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Surabaya Submarine Monument',
        location: 'Jl Pemuda',
        imageAsset: 'assets/images/monkasel.jpg',
        description:
        'Vestibulum porttitor massa non sem iaculis, ut fringilla nulla commodo. Donec ultrices neque sed ipsum porttitor pharetra. Nullam ac ultricies erat, ac interdum erat. Maecenas id lacinia dolor. Sed consectetur ullamcorper magna, non ornare enim fermentum eu. Nam pulvinar libero eu massa rutrum facilisis.',
        jamBuka: '10.00-19.00',
        hariBuka: 'Weekly',
        harga: 'Rp60.000'
    ),
    TourismPlace(
        name: 'Kelenteng Sanggar Agung',
        location: 'Kenjeran',
        imageAsset: 'assets/images/kelenteng.jpg',
        description:
        'Vestibulum porttitor massa non sem iaculis, ut fringilla nulla commodo. Donec ultrices neque sed ipsum porttitor pharetra. Nullam ac ultricies erat, ac interdum erat. Maecenas id lacinia dolor. Sed consectetur ullamcorper magna, non ornare enim fermentum eu. Nam pulvinar libero eu massa rutrum facilisis.',
        jamBuka: '07.00-19.00',
        hariBuka: 'Everyday',
        harga: 'Rp50.000'
    ),
    TourismPlace(
        name: 'House of Sampoerna',
        location: 'Krembangan Utara',
        imageAsset: 'assets/images/sampoerna.jpg',
        description:
        'Vestibulum porttitor massa non sem iaculis, ut fringilla nulla commodo. Donec ultrices neque sed ipsum porttitor pharetra. Nullam ac ultricies erat, ac interdum erat. Maecenas id lacinia dolor. Sed consectetur ullamcorper magna, non ornare enim fermentum eu. Nam pulvinar libero eu massa rutrum facilisis.',
        jamBuka: '07.00-19.00',
        hariBuka: 'Sunday off',
        harga: 'Rp50.000'
    ),
    TourismPlace(
        name: 'Tugu Pahlawan',
        location: 'Alun-Alun contong',
        imageAsset: 'assets/images/tupal.jpeg',
        description:
        'Vestibulum porttitor massa non sem iaculis, ut fringilla nulla commodo. Donec ultrices neque sed ipsum porttitor pharetra. Nullam ac ultricies erat, ac interdum erat. Maecenas id lacinia dolor. Sed consectetur ullamcorper magna, non ornare enim fermentum eu. Nam pulvinar libero eu massa rutrum facilisis.',
        jamBuka: '10.00-19.00',
        hariBuka: 'Everyday',
        harga: 'Rp50.000'
    ),
    TourismPlace(
        name: 'Patung Suro Boyo',
        location: 'Wonokromo',
        imageAsset: 'assets/images/suroboyo.jpg',
        description:
        'Vestibulum porttitor massa non sem iaculis, ut fringilla nulla commodo. Donec ultrices neque sed ipsum porttitor pharetra. Nullam ac ultricies erat, ac interdum erat. Maecenas id lacinia dolor. Sed consectetur ullamcorper magna, non ornare enim fermentum eu. Nam pulvinar libero eu massa rutrum facilisis.',
        jamBuka: '10.00-19.00',
        hariBuka: 'Everyday',
        harga: 'Rp50.000'
    ),
    TourismPlace(
        name: 'Food Junction Grand Pakuwon',
        location: 'Kec. Tandes',
        imageAsset: 'assets/images/junction.jpg',
        description:
        'Vestibulum porttitor massa non sem iaculis, ut fringilla nulla commodo. Donec ultrices neque sed ipsum porttitor pharetra. Nullam ac ultricies erat, ac interdum erat. Maecenas id lacinia dolor. Sed consectetur ullamcorper magna, non ornare enim fermentum eu. Nam pulvinar libero eu massa rutrum facilisis.',
        jamBuka: '10.00-19.00',
        hariBuka: 'Everyday',
        harga: 'Rp50.000'
    ),
    TourismPlace(
        name: 'Hotel Majapahit',
        location: 'Jalan Tunjungan No.65, Genteng',
        imageAsset: 'assets/images/majapahit.jpg',
        description:
        'Vestibulum porttitor massa non sem iaculis, ut fringilla nulla commodo. Donec ultrices neque sed ipsum porttitor pharetra. Nullam ac ultricies erat, ac interdum erat. Maecenas id lacinia dolor. Sed consectetur ullamcorper magna, non ornare enim fermentum eu. Nam pulvinar libero eu massa rutrum facilisis.',
        jamBuka: '10.00-19.00',
        hariBuka: 'Everyday',
        harga: 'Rp50.000'
    ),
    TourismPlace(
        name: 'Atlantis Land',
        location: 'Kec. Bulak',
        imageAsset: 'assets/images/atlantis.jpg',
        description:
        'Vestibulum porttitor massa non sem iaculis, ut fringilla nulla commodo. Donec ultrices neque sed ipsum porttitor pharetra. Nullam ac ultricies erat, ac interdum erat. Maecenas id lacinia dolor. Sed consectetur ullamcorper magna, non ornare enim fermentum eu. Nam pulvinar libero eu massa rutrum facilisis.',
        jamBuka: '10.00-19.00',
        hariBuka: 'Everyday',
        harga: 'Rp50.000'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget){
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place), 
                onCheckboxClick: (bool? value) {
                  data.complete(place, value!);
                }
              );
            }
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}