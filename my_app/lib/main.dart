import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:my_app/pages/Chats.dart';
import 'package:my_app/pages/chatDetailScreen.dart';
import 'package:my_app/pages/login.dart';

void main() {
  runApp(finalrevesion());
}

class finalrevesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: "Material app bar",
      home: Login(),
      // home: Chats(),
      // home: ChatDetailScreen(),
    ));
  }
}
