
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
void displayDialogIOS(BuildContext context){

      showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) { 
          return  CupertinoAlertDialog(
            //elevation: 5,
            title: const Text('Titulo alerta'),
            //shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Excepteur ullamco velit labore Lorem consectetur velit ullamco.'),
                SizedBox(height: 10),
                FlutterLogo(size:100)
              ],
            ),
            actions: [
              TextButton(
                onPressed: () =>Navigator.pop(context),
                child: const Text('cancelar', style: TextStyle(color: Colors.red),)
                ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('ok')
                )
            ],
          ); 
        }
      );
  }



  void displayDialogAndroid(BuildContext context){

      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) { 
          return  AlertDialog(
            elevation: 5,
            title: const Text('Titulo alerta'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Excepteur ullamco velit labore Lorem consectetur velit ullamco.'),
                SizedBox(height: 10),
                FlutterLogo(size:100)
              ],
            ),
            actions: [
              TextButton(
                onPressed: () =>Navigator.pop(context),
                child: const Text('cancelar')
                ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('ok')
                )
            ],
          ); 
        }
      );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
         child: ElevatedButton(
          // onPressed: ()=>displayDialogAndroid(context),
          onPressed: ()=> Platform.isAndroid?
          displayDialogAndroid(context): displayDialogIOS(context),
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: Colors.orange,
          //   elevation: 5,
          //   shape: const StadiumBorder()
          // ),
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child:  Text("Mostrar Alerta", style: TextStyle(fontSize: 15),),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.green,
        child: const Icon(Icons.close),
        onPressed: () {

          Navigator.pop(context);
        }
      ),
    );
  }
}