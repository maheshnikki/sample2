import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> imagesList = [
    "http://i.imgur.com/zuG2bGQ.jpg",
    "http://i.imgur.com/ovr0NAF.jpg",
    "http://i.imgur.com/pSHXfu5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: false,
          enableInfiniteScroll: false,
        ),
        items: imagesList
            .map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.network(
                        e,
                        width: 1000,
                        height: 200,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
