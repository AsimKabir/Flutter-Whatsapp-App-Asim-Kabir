import 'package:flutter/material.dart';
import 'package:my_app/pages/HomePage.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    password.dispose();
    super.dispose();
  }

  // Function printValues() {
  //   return (Container(
  //     child: Column(
  //       children: [
  //         Text(email.text),
  //         Text(password.text),
  //       ],
  //     ),
  //   ),);
  // }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: "Login page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Body of the login page"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  controller: email,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  controller: password,
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    // showDialog(
                    //     context: context,
                    //     builder: (context) {
                    //       return AlertDialog(
                    //         content: Text("Email is: " +
                    //             email.text +
                    //             "\npassword is: " +
                    //             password.text),
                    //       );
                    //     });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text(email.text),
                SizedBox(
                  height: 10,
                ),
                Text(password.text)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
