import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  final options = const ["Mega Man", "Super Smash", "Metal Gear", "Halo", "Final Fantasy"];

  const ListView1Screen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("List View Tipo 1")
      ),
      body: ListView(
        children:  [
          
          ...options.map((e) =>           
            ListTile(
               leading: const Icon(Icons.access_time_sharp) ,
               title: Text(e),
               trailing: const Icon(Icons.arrow_forward_ios_sharp),
            )
          ).toList()
          //,
          // ListTile(
          //   leading: Icon(Icons.access_time_sharp) ,
          //   title: Text("Hola Mundo"),
          // )
        ],
      ),
    );
  }
}