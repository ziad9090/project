import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favorite extends StatefulWidget {
  const favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  Container(
          child: Center(child:  Text("Favorite"),)
        )
    );
  }
}
