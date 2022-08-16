import 'package:flutter/material.dart';
import 'package:kanglei_tourist_home/authenticate/home.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final _formKey = GlobalKey<FormState>();
final _controller_1 = TextEditingController();
final _controller_2 = TextEditingController();
final controller_3 = TextEditingController();
final controller_4 = TextEditingController();
String email = '';
String pwd = '';
String confirm = '';
String contact = '';

class _SignUpPageState extends State<SignUpPage> {
  Widget? con1;

  Widget widget1() {
    return Container();
  }

  @override
  void initState() {
    super.initState();
    con1 = widget1();
  }

  @override
  Widget build(BuildContext context) {
    Widget con = Container(
      color: Colors.white24,
      child: Column(
        children: [
          const Text('Registration Done!!!'),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Click here',
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 10),
                  )),
              const Text('To go to Home Page', style: TextStyle(fontSize: 10))
            ],
          ),
        ],
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _controller_1,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink)),
                              labelText: 'Enter email-id'),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        TextFormField(
                          controller: _controller_2,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink)),
                              labelText: 'Enter password'),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        TextFormField(
                          controller: controller_3,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink)),
                              labelText: 'Confirmed password'),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        TextFormField(
                          controller: controller_4,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink)),
                              labelText: 'Enter contact number'),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (email == _controller_1.text &&
                                  pwd == _controller_2.text &&
                                  confirm == controller_3.text &&
                                  contact == controller_4.text) {
                                setState(() {
                                  con1 = con;
                                });
                              }
                            },
                            child: const Text('Register')),
                        const SizedBox(
                          height: 50,
                        ),
                        con1!
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
