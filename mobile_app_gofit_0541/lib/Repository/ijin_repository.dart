import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:mobile_app_gofit_0541/Models/ijin_instruktur.dart';
import 'dart:convert';
import 'package:mobile_app_gofit_0541/Models/login_user.dart';
import 'package:mobile_app_gofit_0541/Config/constant.dart';

class IjinRepository {
 Future<List<IjinInstruktur>> getIjinInstruktur(String idInstruktur) async {
    String apiURL = '$url/selectijin'; 
    try{
      var apiResult = await http.post(Uri.parse(apiURL),body: {'id_instruktur' : idInstruktur});
      if(apiResult.statusCode == 200){
        var jsonObject = json.decode(apiResult.body);
        inspect(jsonObject);
        List<IjinInstruktur> ijinInstruktur = [];
        for (var item in jsonObject['data']) {
          ijinInstruktur.add(IjinInstruktur.fromJson(item));
        }
        return ijinInstruktur;
      }
    }catch(e){
      return [];
    }
    return [];
  }
}