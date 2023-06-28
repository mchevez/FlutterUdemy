import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2( imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/screen-shot-2018-07-11-at-5-06-55-pm-1531343396.png',),
          SizedBox(height: 10,),
          CustomCardType2( imageUrl: 'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Un Hermoso Paisaje', imageUrl: 'https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w',),
          SizedBox(height: 100,)
        ]
      ),
    );
  }
}

