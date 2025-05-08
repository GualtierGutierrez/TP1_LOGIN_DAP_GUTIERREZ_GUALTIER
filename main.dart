import 'package:flutter/material.dart';


void main() {


  runApp(MainApp());


}


class MainApp extends StatefulWidget {


  const MainApp({super.key});


  @override


  State<MainApp> createState() => _MainAppState();


}


class _MainAppState extends State<MainApp> {


  


  bool loginCorrecto = false;


  String mensajeError = "";


  String usuarioValido = "Gualti";


  String contrasenaValida = "Ferrari812";


  TextEditingController usuarioController = TextEditingController();


  TextEditingController contrasenaController = TextEditingController();


  @override


  Widget build(BuildContext context) {


    return MaterialApp(


      home: Scaffold(


        


        body: Center(


          child: loginCorrecto


              ? Text(


                  'BIENVENIDO',


                  style: TextStyle(


                    fontSize: 38,


                   


                   


                  ),


                )


              : Column(


                  mainAxisSize: MainAxisSize.min,


                  children: [


                    


                    Text(


                      'Usuario',


                      style: TextStyle(fontSize: 23),


                    ),


                   


                    SizedBox(height: 28), 


                    Container(


                      width: 360,


                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),


                      decoration: BoxDecoration(


                        border: Border.all(), 


                        borderRadius: BorderRadius.circular(10),


                      ),


                      child: TextField(


                        controller: usuarioController,


                        textAlign: TextAlign.center,


                        style: TextStyle(fontSize: 16),


                      ),


                    ),


       


                    SizedBox(height: 42),


                    


                    Text(


                      'Contraseña',


                      style: TextStyle(fontSize: 23),


                    ),


                   


                    SizedBox(height: 28), 


                    Container(


                      width: 360, 


                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), 


                      decoration: BoxDecoration(


                        border: Border.all(),


                        borderRadius: BorderRadius.circular(10),


                      ),


                      child: TextField(


                        controller: contrasenaController,


                        textAlign: TextAlign.center,


                        style: TextStyle(fontSize: 16),


                      ),


                    ),


       


                    SizedBox(height: 47),


                    ElevatedButton(


                      onPressed: () {


                        String usuario = usuarioController.text;


                        String contrasena = contrasenaController.text;


                        setState(() {


                          if (usuario == usuarioValido && contrasena == contrasenaValida) {


                            loginCorrecto = true;


                            mensajeError = "";


                          } else if (usuario =="") {
                          mensajeError =


                                "El usuario esta incompleto, intente de nuevo";


                        } else if (contrasena =="") {
                          mensajeError =


                                "La contrasena esta incompleta, intente de nuevo";


                        } else if (usuario != usuarioValido) {


                          mensajeError =


                                "El usuario es incorrecto, intente de nuevo";
                           


                          } else if (contrasena != contrasenaValida) {


                            mensajeError =


                                "La contraseña es incorrecta, intente de nuevo";


                          }


                        });


                      },


                      child: Text(


                        'login',


                        style: TextStyle(fontSize: 26),


                      ),


                    ),


                    SizedBox(height: 18),


                   


                    if (mensajeError != "")


                      Text(


                        mensajeError,


                        style: TextStyle(


                          fontSize: 15,


                          color: Colors.red,


                        ),


                        textAlign: TextAlign.center,


                      ),


                  ],


                ),


        ),


      ),


    );


  }


}