import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _mobileController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobileController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8fbf4),
       body: SafeArea(
         child: Column(
           children: [
             Container(
               height: MediaQuery.of(context).size.height / 2,
decoration: BoxDecoration(
  color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40)
      )
),
              child: Image.asset("assets/login.png"),
             ),
       Align(alignment: Alignment.center,
       child: Text("Login With"),),


       TextFormField(
            style: TextStyle(
              fontWeight: FontWeight.w500,
              letterSpacing: 1.0,
            ),
            controller: _mobileController,
            readOnly: false,
            obscureText: false,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xFF9cca57),
                      width: 1.0)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:  Color(0xFF9cca57), width: 1.0),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:  Color(0xFF9cca57), width: 1.0)),
              labelText: 'Enter Mobile Number',
              //labelStyle: AppFontStyle.hint_text_style,
              hintText: 'Enter Mobile Number',
              //hintStyle: AppFontStyle.hint_text_style,
             
            ),
            onChanged: (value) {
            
            },
          ),

     Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 0.2,
                  width: MediaQuery.of(context).size.width / 2 - 32,
                  color: Colors.black
                ),
                Text(
                  "  Or  ",
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 32,
                  height: 0.2,
                  color: Colors.black,
                )
              ],
            )),
Container(
  child:      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


          
                Image.asset("assets/fb.png"),
           Container(
             height: 50,
             width: 1,
             color: Colors.black,
           ),
            Image(
                height: 60,
                width: 60,
                image: AssetImage('assets/google.png')),
            SizedBox(width: 25),
         
          ],
        ),

)
           ],
         ),
       ),
    );
  }
}