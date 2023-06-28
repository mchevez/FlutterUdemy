import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_themes.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _slidervalue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: SingleChildScrollView (
        child: Column(
          children: [
            Slider.adaptive(
              min: 30,
              max: 500,
              value: _slidervalue, 
              divisions: 10,
              activeColor: AppThemes.primary,
              onChanged: _sliderEnabled 
              ? (value) {
                _slidervalue = value;
                setState(() { });
              } : null,
            ),

            Checkbox(
               value: _sliderEnabled,
               onChanged: (value){

                _sliderEnabled = value??true;
                setState(() { });
               }
            ),
            
            CheckboxListTile(
              activeColor: AppThemes.primary,
              value: _sliderEnabled,
              title: const Text('Habilitar Slider'),
              onChanged: (value) => setState(() {  _sliderEnabled = value??true; })
            ), 
            Switch(
              value:_sliderEnabled,  
              onChanged: (value) => setState(() { _sliderEnabled = value; })
            ),
            SwitchListTile.adaptive(
              activeColor: AppThemes.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled, 
              onChanged: (value) => setState(() { _sliderEnabled = value; })
            ),
            const AboutListTile(),
            const SingleChildScrollView(
              child: Image(
                image: NetworkImage('https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2022/03/avatar-facebook-2632445.jpg?tf=3840x'),
                fit: BoxFit.contain,
                width: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}