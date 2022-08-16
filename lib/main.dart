import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
// Import the generated file
import 'authenticate/sign_in.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final database = FirebaseDatabase.instance;
  String d = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogIn(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("data"),
      //   ),
      //   body: Center(
      //     child: Column(
      //       children: [
      //         ElevatedButton(
      //             onPressed: () async {
      //               var data = await database.ref("name").get();
      //               setState(() {
      //                 d = data.value.toString();
      //               });
      //               log(data.value.toString());
      //             },
      //             child: const Text("Check")),
      //         Text(d)
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
