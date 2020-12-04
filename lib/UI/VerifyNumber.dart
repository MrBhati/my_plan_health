import 'package:flutter/material.dart';
import 'package:plan_my_health/Helpers/ApiHelper.dart';
import 'package:plan_my_health/UI/Home.dart';

class VerifyNumber extends StatefulWidget {
  VerifyNumber({Key key}) : super(key: key);

  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {

   ApiHelper apiHelper = ApiHelper();
  bool _isloading = false; 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 35, 20, 10),
                child: Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Text(
                        "Verify phone \nnumber",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                      child: Text(
                        "Check your SMS message. We've send you the PIN at +91 8149946614",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ),
               
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: TextField(
                               style: TextStyle(color: Colors.black,
                               fontSize: 30,
                               fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                              decoration: new InputDecoration(
                                
                                  // border: new OutlineInputBorder(
                                  //     borderSide: new BorderSide(color: Colors.teal)),
                                  hintText: '0',
                                  hintStyle: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                       

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: TextField(
                               style: TextStyle(color: Colors.black,
                               fontSize: 30,
                               fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                              decoration: new InputDecoration(
                                
                                  // border: new OutlineInputBorder(
                                  //     borderSide: new BorderSide(color: Colors.teal)),
                                  hintText: '0',
                                  hintStyle: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: TextField(
                               style: TextStyle(color: Colors.black,
                               fontSize: 30,
                               fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                              decoration: new InputDecoration(
                                
                                  // border: new OutlineInputBorder(
                                  //     borderSide: new BorderSide(color: Colors.teal)),
                                  hintText: '0',
                                  hintStyle: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),

                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: TextField(

                               style: TextStyle(color: Colors.black,
                               fontSize: 30,
                               fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                              decoration: new InputDecoration(
                                
                                  // border: new OutlineInputBorder(
                                  //     borderSide: new BorderSide(color: Colors.teal)),
                                  hintText: '0',
                                  hintStyle: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                )),
              ),
          
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
child: GestureDetector(
                        onTap: (){

            
                        setState(() {
                          _isloading = true;
                        });
                          apiHelper.verifyNumber(context, "");

                        },
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));                    },
                        child: Container(
                         
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(6))
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                               child: Text(_isloading == false ? "Verify" : "Loading...", style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),),
                          ),
                        ),
                      ),
              ),

SizedBox(height: 15),
Center(
  child:   RichText(
  
    text: TextSpan(
  
      text: 'Didn\'t recive',
  
      style: TextStyle(
  
          color: Colors.black,
  
          fontWeight: FontWeight.w600,
  
          fontSize: 14,
  
      ),
  
      children: <TextSpan>[
  
        TextSpan(text: '  Resend ', style: TextStyle(
  
          color: Colors.green,
  
          fontWeight: FontWeight.w700,
  
          fontSize: 16,
  
        )),
  
      ],
  
    ),
  
  ),
)
                
          ],
        ),
            )),
      ),
    );
  }
}
