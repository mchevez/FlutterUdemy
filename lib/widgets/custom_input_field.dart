import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String?  labelText;
  final String?  helperText;  
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText ;

  final String formProperty;
  final Map<String, String> formValue;

  const CustomInputField({
    super.key, this.hintText,
     this.labelText,
     this.helperText,
     this.suffixIcon,
     this.icon, 
     this.keyboardType, 
     this.obscureText = false, 
     required this.formProperty, required this.formValue,    
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,//TextInputType.emailAddress,
      obscureText: obscureText,
      onChanged: (value)  => formValue[formProperty] = value,
      validator: (value)  {
        if(value == null) return 'Campo Requerido';
        return value.length<3?'Minimo requerido 3 letras ':null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: '3 caracteres',
        // prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null? null : Icon(suffixIcon),
        icon: icon == null? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green
        //   )
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10)
        //   )
        // )
      ),
    );
  }
}