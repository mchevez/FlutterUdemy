import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {
     
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues ={
      'first_name':'Michael',
      'last_name':'Chevez',
      'password':'123',
      'email':'mchevez92@gmail.com',
      'rol':'Admin',
    };
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body:  SingleChildScrollView (
         child: Padding(
           padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child: Form(
            key: myFormKey,
            child: Column(
              children: [
                // este widget no tiene el initialvalue
                // TextField(
                //   autofocus: true,
                // 
                //   textCapitalization: TextCapitalization.words,
                //   onChanged: (value) => {},
                // ),
               CustomInputField(labelText: 'Nombre', hintText: 'Nombre del Usuario ', formProperty: 'first_name', formValue: formValues,),
               const  SizedBox(height: 30,),
               CustomInputField(labelText: 'Apellido', hintText: 'Apellido del Usuario', formProperty: 'last_name', formValue: formValues,),
               const  SizedBox(height: 30,),
               CustomInputField(labelText: 'Correo', hintText: 'Correo del Usuario ', keyboardType: TextInputType.emailAddress, formProperty: 'password', formValue: formValues,),
               const SizedBox(height: 30,),
               CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del Usuario ', obscureText: true, formProperty: 'email', formValue: formValues,),
               const  SizedBox(height: 30,),

               DropdownButtonFormField<String>(
                
                  value: 'Admin',
                  items: const [
                     DropdownMenuItem(value: 'Admin', child: Text('admin'),),
                     DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser'),),
                     DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
                     DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer'),),
                     DropdownMenuItem(value: 'Midle', child: Text('Midle'),),

                  ], 
                  onChanged: (value){
                    print(value);
                    formValues['role'] = value??'Admin'; 
                  }),
                const  SizedBox(height: 30,),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child:  Center(child: Text('Guardar'))
                  ),
                  onPressed: (){

                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate())
                    {
                      print('formulario de no valido');
                      return ;
                    }
                    print(formValues);
                  },
                ),
              ]
                   
                     ),
           ),
        ),
      ),
    );
  }
}
