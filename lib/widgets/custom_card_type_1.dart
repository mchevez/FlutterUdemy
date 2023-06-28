import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_themes.dart';

class CustomCardType1 extends StatelessWidget {

  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppThemes.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Proident deserunt anim ipsum laborum aute aliquip amet exer. nsequat .'),
          ),
          Padding(
            padding: const EdgeInsets.only(right:8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  TextButton(
                    onPressed: (){}, 
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: const Text('Ok'),
                   )
              ],
            ),
          )
        ],
      ),
    );
  }
}