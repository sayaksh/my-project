import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        shadowColor: Colors.amber,
        centerTitle: true,
        actions: const [Icon(Icons.person)],
      ),
      body: Column(children: [
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.white24,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'WELCOME TO MANIPUR \n TOURIST HOME',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const DistrictPage(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        'Plan a trip',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 210,
                      width: 99,
                      child: Container(
                        color: Colors.red,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-cQWw97CJUsk8YiQLiBs5mB0d0B6atoK_w&usqp=CAU',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 210,
                      width: 99,
                      child: Container(
                        color: Colors.red,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-cQWw97CJUsk8YiQLiBs5mB0d0B6atoK_w&usqp=CAU',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 210,
                      width: 99,
                      child: Container(
                        color: Colors.red,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-cQWw97CJUsk8YiQLiBs5mB0d0B6atoK_w&usqp=CAU',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      height: 210,
                      width: 99,
                      child: Container(
                        color: Colors.red,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-cQWw97CJUsk8YiQLiBs5mB0d0B6atoK_w&usqp=CAU',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
