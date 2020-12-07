import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:plan_my_health/UI/Home.dart';
import 'package:plan_my_health/UI/VerifyNumber.dart';
import 'package:plan_my_health/model/OrderList.dart';

class ApiHelper {
    String _baseUrlDev = "";
  Dio dio = new Dio();

    Future<bool> mobileLogin(BuildContext context, String number) async {
    try {
print("Iam in");

//Instance level
dio.options.contentType= Headers.formUrlEncodedContentType;
//or works once
Response response = await dio.post("http://3.15.233.253:5000/doctors/sendotp", data:{"mobilenumber":8356928929}, 
         options: Options( headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
      }, ));
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
      //  throw e;
    }
    return false;
  }


      Future<bool> verifyNumber(BuildContext context, String otp) async {
    try {
print("Iam in");

//Instance level
dio.options.contentType= Headers.formUrlEncodedContentType;
//or works once
Response response = await dio.post("http://3.15.233.253:5000/doctors/otpverify", data:{"mobilenumber":8356928929,"otp":7034}, 
         options: Options( headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
      }, ));
print(response.statusMessage);
print(response.statusCode);
print(response);
      if (response.statusCode == 200) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));    
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
      //  throw e;
    }
    return false;
  }

Future<OrderList> getOderList() async {
  Response response = await dio.get("http://3.15.233.253:5000/orders");

   if (response.statusCode == 200) {
        OrderList orderList = OrderList.fromJson(response.data);
        return orderList;
      } else {
        print(response.data);
      }
}

}