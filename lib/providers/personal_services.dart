import 'package:fl_identity/models/personal.model.dart';
import 'package:flutter/foundation.dart';
import  'package:http/http.dart'  as http; 


class PersonalServices with ChangeNotifier{
  List<String> listado = ['uno', 'dos'];
  String base_url = "localhost:3000";
  var data = "nada";

  PersonalServices(){
      //this.getDataXLegajo('1397');
  }

  getDataXLegajo(String id)async{
      //  var url = Uri.http("192.168.122.1:3000", '/personal/datos-credencial',{
      //   "legajo": "3617"
      //  });
      var url = Uri.http("localhost:3000", '/personal/datos-credencial?legajo=3617');
       // var url = 'http://[::1]:3000/personal/datos-credencial?legajo=3617';
       print(url.data);
      final data = await http.get(url).then((value) {
        print(value.body);
      });
      print('EJECUTANDO GET DE DATOS!!!');
      print(data.body);
      //notifyListeners();
  }


  
}