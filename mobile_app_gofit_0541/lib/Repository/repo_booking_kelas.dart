//* Import
import 'dart:developer';
import 'dart:convert';
import 'package:mobile_app_gofit_0541/Config/global.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_app_gofit_0541/Models/booking_kelas.dart';
import 'package:mobile_app_gofit_0541/Models/jadwal_harian.dart';


class BookingKelasRepository{
  
    Future<List<BookingKelas>> show(String idJadwal) async {
      String apiUrl = '$url/memberkelasbyjadwal/$idJadwal';
      List<BookingKelas> data =  [];
      try{
        var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
        var apiResult = await http.get(Uri.parse(apiUrl), headers: headers);
        inspect(apiResult);
        var jsonObject = json.decode(apiResult.body);
          for(var item in jsonObject['data']){
            data.add(BookingKelas.fromJson(item));
          }
        return data;
    }catch(e){
      inspect(e);
        return data;
    }
    }


    Future<List> presensiKelas(String noBooking) async {
      String apiUrl = '$url/kehadirankelas/$noBooking';
      try{
        var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
        var apiResult = await http.put(Uri.parse(apiUrl) );
        inspect(apiResult.body);
        var jsonObject = json.decode(apiResult.body);
        final responseData = jsonDecode(apiResult.body);
        final responseMessage = responseData['message'];
        if(apiResult.statusCode == 200){
          return [responseMessage,true];
        }else if(apiResult.statusCode == 400){
          return [responseMessage,false];
        }else{
          return ['Gagal Membatalkan Booking',false];
        }
    }catch(e){
        inspect(e);
        return ['Gagal'];
    }
    }  
    Future<List> absenKelas(String noBooking,) async {
      String apiUrl = '$url/absenkelas/$noBooking';
      try{
        var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
        var apiResult = await http.put(Uri.parse(apiUrl) );
        inspect(apiResult.body);
        var jsonObject = json.decode(apiResult.body);
        final responseData = jsonDecode(apiResult.body);
        final responseMessage = responseData['message'];
        if(apiResult.statusCode == 200){
          return [responseMessage,true];
        }else if(apiResult.statusCode == 400){
          return [responseMessage,false];
        }else{
          return ['Gagal Membatalkan Booking',false];
        }
    }catch(e){
        inspect(e);
        return ['Gagal'];
    }
    }  


    //* Menambahkan Booking Baru

    //? Tampilkan Data Kelas
      Future<List<JadwalHarian>> showClass() async {
      String apiUrl = '$url/classlist';
        List<JadwalHarian> data =  [];
        try{
            var apiResult = await http.get(Uri.parse(apiUrl));
            var jsonObject = json.decode(apiResult.body);
              for(var item in jsonObject['data']){
                data.add(JadwalHarian.fromJson(item));
              }
              inspect(data);
            return data;
        }catch(e){
            inspect(e);
            return data;
        }
  }



  
    Future<List> store({required String idMember, required String idJadwalHarian }) async{
      String apiUrl = '$url/bookingkelas';
      try{
        var apiResult = await http.post(Uri.parse(apiUrl), 
        body: 
        {
          'id_member' : idMember,
          'id_jadwal_harian': idJadwalHarian,
        });
        //* + validasi di backend
        
        final responseData = jsonDecode(apiResult.body);
        final responseMessage = responseData['message'];
        if(apiResult.statusCode == 200){
          return [responseMessage,true];
        }else if(apiResult.statusCode == 400){
          return [responseMessage,false];
        }else{
          return ['Gagal Booking',false];
        }
      }catch(e){
        inspect(e);
        return ['Gagal Booking',false];
      }
    }
}
