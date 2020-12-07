import 'package:flutter/material.dart';
import 'package:plan_my_health/Helpers/ApiHelper.dart';
import 'package:plan_my_health/model/OrderList.dart';

class UserListScreen extends StatefulWidget {
  UserListScreen({Key key}) : super(key: key);

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  OrderList orderList;
  ApiHelper apiHelper = ApiHelper();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiHelper.getOderList().then((userlist) {
            print("User Name "+userlist.doctorlist[0].userdata[0].name);
      setState(() {
        
        orderList = userlist;
        getUsersList(orderList);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: orderList == null ? Text("List is null") : Text(" List is full"),
        ),
      ),
    );
  }

   Widget getUsersList(odersList)
  {
      
  }
}
