import 'package:fl_identity/themes/global_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetalleScreen extends StatelessWidget {
   
  const DetalleScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(400),
        child: AppBar(
          flexibleSpace: Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [GlobalTheme.primary_color, Colors.lightBlue], stops: [0.5,0.7]
                )
            ),
          ),  
          centerTitle: true,
          title: Container(
            //margin: EdgeInsets.only(top: 30),
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('Nombre y Apellido', style: GoogleFonts.oswald(color: Colors.white, fontSize: 30), maxLines: 2, overflow: TextOverflow.visible, softWrap: true, textAlign: TextAlign.center),
                  Text('Grado', style: GoogleFonts.oswald(color: Colors.white, fontSize: 20), maxLines: 2, overflow: TextOverflow.ellipsis, softWrap: true, textAlign: TextAlign.center),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          toolbarHeight: 200,
          
          leading: const Icon(Icons.keyboard_arrow_left_outlined, size: 40),         
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/masculino.jpeg'),
                    maxRadius: 100,                  
                   ),
            ),
          ),
        ),
      ),
      body: Center(
         child: Text('DetalleScreen'),
      ),
    );
  }
}