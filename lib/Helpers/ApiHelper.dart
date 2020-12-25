import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:plan_my_health/UI/Home.dart';
import 'package:plan_my_health/UI/VerifyNumber.dart';
import 'package:plan_my_health/model/Diagnosis.dart';
import 'package:plan_my_health/model/Diagnostics.dart';
import 'package:plan_my_health/model/LoginData.dart';
import 'package:plan_my_health/model/Medicines.dart';
import 'package:plan_my_health/model/Patient.dart';
import 'package:plan_my_health/model/PatientList.dart';
import 'package:plan_my_health/model/Specialities.dart';
import 'package:plan_my_health/model/Wellness.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiHelper {
  String _baseUrlDev = "";
  Dio dio = new Dio();

  Future<bool> mobileLogin(BuildContext context, String number) async {
    try {
      print("Iam in");

//Instance level
      dio.options.contentType = Headers.formUrlEncodedContentType;
//or works once
      Response response =
          await dio.post("http://3.15.233.253:5000/doctors/sendotp",
              data: {"mobilenumber": 8356928929},
              options: Options(
                headers: {
                  "Accept": "application/json",
                  "Content-Type": "application/x-www-form-urlencoded"
                },
              ));
      print(response.statusMessage);
      print(response.statusCode);
      print(response);
      if (response.statusCode == 200) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => VerifyNumber()));
      } else {
        print(response.data);
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Authentication Failed'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('Plese check Credencial'),
                    Text('Invalid user name or password'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
        return false;
      }
    } on DioError catch (e) {
      print(e);
    }
    return false;
  }

  Future<LoginData> verifyNumber(BuildContext context, String otp) async {
    try {
      print("Iam in");

//Instance level
      dio.options.contentType = Headers.formUrlEncodedContentType;
//or works once
      Response response =
          await dio.post("http://3.15.233.253:5000/doctors/otpverify",
              data: {"mobilenumber": 8356928929, "otp": otp},
              options: Options(
                headers: {
                  "Accept": "application/json",
                  "Content-Type": "application/x-www-form-urlencoded"
                },
              ));
      print(response.statusMessage);
      print(response.statusCode);
      print(response);
      if (response.statusCode == 200) {
        LoginData loginData = LoginData.fromJson(response.data);

        return loginData;
      } else {
        print(response.data);

        return null;
      }
    } on DioError catch (e) {
      throw e;
    }
    return null;
  }

  Future<PatientList> getOderList() async {
    Response response = await dio.get("http://3.15.233.253:5000/orders");

    if (response.statusCode == 200) {
      PatientList orderList = PatientList.fromJson(response.data);
      return orderList;
    } else {
      print(response.data);
    }
  }

  Future<List<Medicinelist>> getMedicinelist() async {
    Response response = await dio.get("http://3.15.233.253:5000/medicines");

    print("---------------------" + response.statusCode.toString());
    if (response.statusCode == 200) {
      Medicines medicine = Medicines.fromJson(response.data);
      return medicine.medicinelist;
    } else {
      print(response.data);
    }
  }

  Future<List<Diagnosislist>> getDiagnosislist() async {
    Response response = await dio.get("http://3.15.233.253:5000/diagnosis");

    print("---------------------" + response.statusCode.toString());
    if (response.statusCode == 200) {
      Diagnosis diagnosis = Diagnosis.fromJson(response.data);
      return diagnosis.diagnosislist;
    } else {
      print(response.data);
    }
  }

  Future<List<Specialitieslist>> getSpecialitieslist() async {
    Response response = await dio.get("http://3.15.233.253:5000/specialities");

    print("---------------------" + response.statusCode.toString());
    if (response.statusCode == 200) {
      Specialities specialities = Specialities.fromJson(response.data);
      return specialities.specialitieslist;
    } else {
      print(response.data);
    }
  }

  Future<List<Diagnosticslist>> getDiagnosticslist() async {
    Response response = await dio.get("http://3.15.233.253:5000/diagnostics");

    print("---------------------" + response.statusCode.toString());
    if (response.statusCode == 200) {
      Diagnostics diagnostics = Diagnostics.fromJson(response.data);
      print("---------------------" + diagnostics.diagnosticslist[0].name);
      return diagnostics.diagnosticslist;
    } else {
      print(response.data);
    }
  }

  Future<List<Wellnesslist>> getWellnesslist() async {
    Response response = await dio.get("http://3.15.233.253:5000/wellness");

    print("---------------------" + response.statusCode.toString());
    if (response.statusCode == 200) {
      Wellness wellness = Wellness.fromJson(response.data);
      print("---------------------" + wellness.wellnesslist[0].wellnessname);
      return wellness.wellnesslist;
    } else {
      print(response.data);
    }
  }

  Future<Patient> getPatientDetails(String number) async {
    Response response = await dio
        .get("http://3.15.233.253:5000/getmember?mobileNumber=" + number);

    print("---------------------" + response.statusCode.toString());
    if (response.statusCode == 200) {
      Patient patient = Patient.fromJson(response.data);
      print("---------------------" + patient.name);
      return patient;
    } else {
      print(response.data);
    }
  }

  Future<LoginData> sendPrescription(
      String id,
      String name,
      String gender,
      String age,
      int number,
      String pass,
      String drid,
      String drname,
      String selectMedicineList,
      String selectTestList,
      bool hospitalise,
      String specialitiesSelected,
      String selectWellnessList,
      String remark) async {
    try {
      print("Iam in");

//Instance level

      var requestBody = {
        'id': id,
        'name': name,
        'gender': gender,
        'age': age,
        'mobile': number,
        'password': pass,
        'doctorid': drid,
        'doctorname': drname,
        'medicine': selectMedicineList,
        'test': selectTestList,
        'hospitalised': hospitalise,
        'specialist': specialitiesSelected,
        'wellness': selectWellnessList,
        'remark': remark
      };
//or works once
      Response response =
          await dio.post("http://3.15.233.253:5000/doctors/preceptionupdate",
              data: {
                "doctorid": "5fc7d1b6999df38f1bc95367",
                "doctorname": drname,
                "medicinename": selectWellnessList.toString(),
                "medicineid": "321",
                "consultionrequired": selectWellnessList,
                "diagnosticsname": "123123",
                "diagnosticsid": "123123",
                "treatmentname": "12312",
                "treatmentid": "12313",
                "userid": "12312"
              },
              options: Options(
                headers: {
                  "Accept": "application/json",
                  "Content-Type": "application/x-www-form-urlencoded"
                },
              ));
      print(response.statusMessage);
      print(response.statusCode);
      print(response);
      if (response.statusCode == 200) {
        LoginData loginData = LoginData.fromJson(response.data);

        return loginData;
      } else {
        print(response.data);

        return null;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
