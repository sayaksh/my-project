import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  //final AuthService _auth = AuthService();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in tourist home"),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
          child: Form(
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "enter email-id"),
                onChanged: ((value) {
                  setState(() {
                    email = value;
                  });
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "enter password"),
                obscureText: true,
                onChanged: ((value) {
                  setState(() {
                    password = value;
                  });
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  (email);
                  (password);
                },
                child: const Text(
                  "Sign in",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
