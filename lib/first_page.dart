import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const definepage()),
          );
        },
        child: const Center(
           child:DecoratedBox(

        decoration: BoxDecoration(

        image: DecorationImage(
            image: AssetImage("assets/imgs/df50d4b1469877c7684a72cbf7e0dbde.jpeg"), fit: BoxFit.cover),
    ),
    child: Center(

    child: Text("Oxy Boots" , style: TextStyle(fontSize: 24 , color: Colors.white)  ) ,
    ),
    ),
        ),
      ),
    );
  }
}



