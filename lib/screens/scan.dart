import 'package:fl_identity/providers/personal_services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:stylish_dialog/stylish_dialog.dart';


import 'package:fl_identity/themes/global_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanScreen extends StatelessWidget {
   
  const ScanScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final pantalla = MediaQuery.of(context);
    Orientation orientation = pantalla.orientation;

    return  ChangeNotifierProvider<PersonalServices>(
      create: (context) => PersonalServices(),
      child: Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.keyboard_arrow_left_outlined),
            centerTitle: true,
            backgroundColor: GlobalTheme.primary_color,
            title: Text('S.P.P.S.', style: GoogleFonts.sourceSansPro(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
              ),),
        ),
        body: (orientation == Orientation.portrait)? 
          _ColumnLayout(): _RowLayout(pantalla: pantalla),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _FloatingActionBarCode(),
      ),
    );
  }
}

class _FloatingActionBarCode extends StatelessWidget {
  const _FloatingActionBarCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final watch = Provider.of<PersonalServices>(context);


    return  FloatingActionButton(
      backgroundColor: Colors.amberAccent,
      child: Icon(Icons.qr_code, color: Colors.white, size: 50),
      onPressed: ()async{
          String barcodeScanRes;
        // Platform messages may fail, so we use a try/catch PlatformException.
        try {
          barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
              '#ff6666', 'Cancel', true, ScanMode.QR);
          if (barcodeScanRes == '-1') {
            return StylishDialog(
              context: context,
              alertType: StylishDialogType.ERROR,
              titleText: 'Escaneo Cancelado!',
            ).show();
          }
            print('AQUI VA LA DATA');
            print(barcodeScanRes);
            watch.getDataXLegajo('1356');
            
          // List<String> array = barcodeScanRes.split('@');
          // if (array.length != 9) {
          //   return StylishDialog(
          //     context: context,
          //     alertType: StylishDialogType.ERROR,
          //     titleText: 'Código No Váido!',
          //   ).show();
          //}
          StylishDialog errorDialog = StylishDialog(
              context: context,
              alertType: StylishDialogType.ERROR,
              titleText: 'No Empadronado!',
              contentText:
                  "Esta persona no figura en la base de datos del Sistema de Visitas");
          StylishDialog dialog = StylishDialog(
            context: context,
            alertType: StylishDialogType.PROGRESS,
            animationLoop: false,
            titleText: 'Procesando...',
            dismissOnTouchOutside: false,
          );
          dialog.show();
          // providerDni.getData(array);
          // String dato_dni = array[4].toString();
          // var servicio = VisitaService();

          try {
            // PersonalElement visita = await servicio.getByDni(dato_dni);
            dialog.dismiss();
            //Navigator.pushNamed(context, 'details', arguments: visita);
          } catch (e) {
            dialog.dismiss();
            errorDialog.show();
          }
        } catch (e) {
          barcodeScanRes = 'Failed to get platform version.';
        }
      //}


      }
      );
  }
}

class _RowLayout extends StatelessWidget {
  const _RowLayout({
    Key? key,
    required this.pantalla,
  }) : super(key: key);

  final MediaQueryData pantalla;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Container(
                margin: EdgeInsets.only(left: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                 ),
                width: pantalla.size.height * 0.5,
                child: Image(image: AssetImage('assets/icono_persona.png'))),
               Container(
                width: pantalla.size.height * 1.2,
                
                child: Image(image: AssetImage('assets/qr_code.png'))),
             
      ],
      ),
    );
  }
}

class _ColumnLayout extends StatelessWidget {
  const _ColumnLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      alignment: Alignment.center,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [             
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green
              ),
              width: 100,
              child: Image(image: AssetImage('assets/icono_persona.png'))),
             Container(
               padding: EdgeInsets.only(top: 50),
              //width: 600,
              height: 300,
              child: Image(image: AssetImage('assets/qr_code.png'))),
               ],
      ),
    );
  }
}