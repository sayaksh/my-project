import 'package:flutter/material.dart';
import 'package:kanglei_tourist_home/authenticate/home.dart';
import 'package:kanglei_tourist_home/model/model.dart';

import 'package:kanglei_tourist_home/services/serviceapi.dart';

class AllDistrictPage extends StatefulWidget {
  const AllDistrictPage({Key? key}) : super(key: key);

  @override
  State<AllDistrictPage> createState() => _AllDistrictPageState();
}

class _AllDistrictPageState extends State<AllDistrictPage> {
  List<DistrictModel2> datalist = [];
  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    var user = await ServiceApi().Getdata();

    setState(() {
      datalist = user!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Districts"),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: datalist.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DistrictdetailPage(
                                attributes: datalist[index].attributes)));
                  },
                  child: Text(
                    datalist[index].attributes.districtName,
                  ),
                )
              ],
            );
          }),
    );
  }
}
