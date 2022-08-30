import 'package:flutter/material.dart';
import 'package:kanglei_tourist_home/model/model.dart';

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
        title: Text(widget.allData.attributes.districtName),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: SizedBox(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    widget.allData.attributes.description,
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Recommended Spots :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
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
                                  widget.allData.attributes.spots![i].spotName),
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
