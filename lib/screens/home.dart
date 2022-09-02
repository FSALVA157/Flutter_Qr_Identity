import 'package:fl_identity/themes/global_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Scaffold(
      body: Stack(
        children: [
          Positioned(
             child: _PrimerCapa()
            ),
          Positioned(
            bottom: 50,
            right: size.width * 0.1,
            left: size.width * 0.1,
            //width: size.width * 0.5,  
            child: _SegundaCapa() )
        ],
      )
      
      
      
    );
  }
}

class _SegundaCapa extends StatelessWidget {
  const _SegundaCapa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      color: Colors.white,
      disabledColor: Colors.grey,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text('Login', style: GoogleFonts.lato(
        fontWeight: FontWeight.bold,
        color: GlobalTheme.primary_color,
        fontSize: 25
      ),),
      onPressed: (){
        Navigator.pushNamed(context, 'scan');
      });
  }
}

class _PrimerCapa extends StatelessWidget {
  const _PrimerCapa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: GlobalTheme.primary_color,
        child: Center(
          child: Text('S.P.P.S.', style: GoogleFonts.breeSerif(
    textStyle: Theme.of(context).textTheme.headline4,
      fontSize: 80,
      color: Colors.white,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
          ),),
        ),
      );
  }
}