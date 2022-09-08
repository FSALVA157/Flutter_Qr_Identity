import 'package:fl_identity/themes/global_theme.dart';
import 'package:fl_identity/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class DetalleScreen extends StatefulWidget {
   
  const DetalleScreen({Key? key}) : super(key: key);

  @override
  State<DetalleScreen> createState() => _DetalleScreenState();
}

class _DetalleScreenState extends State<DetalleScreen> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);


    return  Scaffold(
      appBar: _CustomAppBar(),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: _CustomFormData(),
        ),
      ),
    );
  }

//metodo que devuelve la customAppBar
  PreferredSize _CustomAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(400),
      child: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
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
    );
  }
}

class _CustomFormData extends StatelessWidget {
  const _CustomFormData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: const [
          CustomFormField(
            icon: Icons.all_inclusive,
            label: "Situación", 
            value: "Activo"),
            CustomFormField(
            icon: Icons.account_tree_outlined,
            label: "Grado", 
            value: "Sargento 1º"),
            CustomFormField(
            icon: Icons.holiday_village_sharp,
            label: "Destino", 
            value: "Unidad Carcelaria Nº 1"),
            CustomFormField(
            icon: Icons.align_horizontal_left,
            label: "Departamento", 
            value: "Vigilancia y Tratamiento"),
        ],
      )
      );
  }
}