import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kanglei_tourist_home/authenticate/all_districts.dart';

import 'package:kanglei_tourist_home/model/carousel.model.dart';

import '../services/serviceapi.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<ImagModel> imgList = [];
  @override
  void initState() {
    super.initState();
    getdata1();
  }

  getdata1() async {
    var pic = await ServiceApi().getdata1();

    setState(() {
      imgList = pic!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kanglei Tourist Home",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 10 / 8,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.7),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child:
                        Image.network(imgList[index].imgUrl, fit: BoxFit.cover),
                  ),
                );
              },
              itemCount: imgList.length,
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(children: [
                const Text(
                  "click below",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllDistrictPage()));
                    },
                    child: const Text(
                      "To Explore Manipur",
                      style: TextStyle(fontSize: 17),
                    )),
              ]))
        ],
      ),
    );
  }
}
