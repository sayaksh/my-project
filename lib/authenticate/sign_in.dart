import 'package:flutter/material.dart';
import 'package:kanglei_tourist_home/authenticate/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

final _formKey = GlobalKey<FormState>();
final controller_1 = TextEditingController();
final controller_2 = TextEditingController();

String username = '';
String password = '';

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: 100,
                      //   child: Image.network(
                      //       "https://upload.wikimedia.org/wikipedia/commons/5/53/Wikimedia-logo.png"),
                      // ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        controller: controller_1,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            labelText: 'Enter username',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pink))),
                        validator: (value) {
                          if (value == null || value == username) {}
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        controller: controller_2,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            fillColor: Colors.white,
                            labelText: 'Enter password',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pink))),
                        validator: (value) {
                          if (value == null || value == password) {}
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (username == controller_1.text &&
                              password == controller_2.text) {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const DashBoard()),
                            // );
                          }
                        },
                        child: const Text('Login'),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Forget password? Click here")),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          );
                        },
                        child: const Text("Sign up"),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
