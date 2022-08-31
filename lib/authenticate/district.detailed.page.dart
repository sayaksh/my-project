import 'package:flutter/material.dart';
import 'package:kanglei_tourist_home/authenticate/view.spot.dart';
import 'package:kanglei_tourist_home/model/districts.model.dart';

class DistrictdetailPage extends StatefulWidget {
  final DistrictModel2 allData;

  const DistrictdetailPage({Key? key, required this.allData}) : super(key: key);

  @override
  State<DistrictdetailPage> createState() => _DistrictdetailPageState();
}

class _DistrictdetailPageState extends State<DistrictdetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          widget.allData.attributes.districtName,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Expanded(
              flex: 10,
              child: SizedBox(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.allData.attributes.description,
                      style: const TextStyle(fontSize: 17, color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommended Spots :',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AllspotPage(
                                            attributes:
                                                widget.allData.attributes,
                                          )));
                            },
                            child: const Text(
                              'View all...',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.purple,
                                // fontWeight: FontWeight.bold
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              )),
            ),
          ),
          Expanded(
            flex: 6,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.allData.attributes.spots!.length,
                    itemBuilder: (c, i) {
                      return InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            SizedBox(
                              height: 250,
                              width: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  widget.allData.attributes.spots![i].imgUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(
                                widget.allData.attributes.spots![i].spotName,
                                style: const TextStyle(
                                  fontSize: 17,
                                  color: Colors.purple,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
