import 'package:flutter/material.dart';

import 'package:kanglei_tourist_home/model/districts.model.dart';

class AllspotPage extends StatelessWidget {
  final Attributes attributes;
  const AllspotPage({Key? key, required this.attributes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'Recommended Spots',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: attributes.spots!.length,
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
                                attributes.spots![i].imgUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              attributes.spots![i].spotName,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.purple,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  });
            }),
      ),
    );
  }
}
