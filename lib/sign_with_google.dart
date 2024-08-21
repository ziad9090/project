import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class googlesign extends StatefulWidget {
  const googlesign({super.key});

  @override
  State<googlesign> createState() => _googlesignState();
}

class _googlesignState extends State<googlesign> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child: Text("Hi Ziad ! Google sign"),
        ),

      ),
    );
  }
}
