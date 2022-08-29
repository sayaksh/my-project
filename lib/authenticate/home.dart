import 'package:flutter/material.dart';
import 'package:kanglei_tourist_home/model/model.dart';

class DistrictdetailPage extends StatefulWidget {
  final Attributes attributes;
  const DistrictdetailPage({Key? key, required this.attributes})
      : super(key: key);

  @override
  State<DistrictdetailPage> createState() => _DistrictdetailPageState();
}

class _DistrictdetailPageState extends State<DistrictdetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.attributes.districtName),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 30,
            child: SizedBox(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(widget.attributes.description),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Recommended Spots :',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            )),
          ),
          Expanded(
            flex: 20,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
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
                                  widget.attributes.spots![i].imgUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(widget.attributes.spots![i].spotName),
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
