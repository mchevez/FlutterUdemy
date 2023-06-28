import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  final options = const ["Mega Man", "Super Smash", "Metal Gear", "Halo", "Final Fantasy"];
  const ListView2Screen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("List View Tipo 2"),
        // elevation: 10,
        // backgroundColor: Colors.indigo,
      ),
      /*Si el listview con el metodo estatico separated tiene demasiados elementos
      este sera poco utili ya que no podra renderizarlos correctamente ya que el metodo
      hacer el renderizado de manera peresoza o bajo demanda*/ 
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_time_sharp),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
          onTap: (){
            //final game = options[index];
            //print(game);
            },
          ), 
        // separatorBuilder: ( _ , __) => const Divider(), 
        ),
    );
  }
}