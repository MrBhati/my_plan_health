import 'package:flutter/material.dart';

class ParientList extends StatefulWidget {
  ParientList({Key key}) : super(key: key);

  @override
  _ParientListState createState() => _ParientListState();
}

class _ParientListState extends State<ParientList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(children: [

              Container(
                width: MediaQuery.of(context).size.width,
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20,15,15),
            child: Text("Welcome to My Plan Health",
            style: TextStyle(fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700),),
          ),
              ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                      child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 14),
                        child: Text("Cardiology",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: "HelveticaNeueMedium")),
                      ),
                    ),
                    SizedBox(width: 18),
                    Container(
                      child: Text("Oncology"),
                    ),
                    SizedBox(width: 18),
                      Container(
                      child: Text("Neurology"),
                    ),
                    SizedBox(width: 18),
                    Container(
                      child: Text("Urology"),
                    )
                  ])),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                tileColor: Color(0xFFDBF8D9),
                onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Chating()));
                },
                leading: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i1.wp.com/www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/square-profile-pic-2.jpg")))),
                title: Row(
                  children: [
                    Text(
                      "Surendra Bhati",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      " [ M ]",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Text(
                    "Would you like to try a bet with me. Accept if yo",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "HelveticaNeueMedium",
                        fontSize: 16),
                  ),
                ),
                // trailing: Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                // Text("",
                //     style: TextStyle(
                //       color: Color(0XFF909090),
                //       fontWeight: FontWeight.w500,
                //       fontSize: 14,
                //     )),
                // SizedBox(height: 10),
                // Container(
                //     height: 20,
                //     width: 20,
                //     decoration: BoxDecoration(
                //         color: Colors.green,
                //         borderRadius: BorderRadius.all(Radius.circular(50))),
                //     child: Align(
                //         child:
                //             Text("2", style: TextStyle(color: Colors.white)))),
                //   ],
                // ),
              ),
              ListTile(
                tileColor: Color(0xFFDBF8D9),
                onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Chating()));
                },
                leading: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i1.wp.com/www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/square-profile-pic-2.jpg")))),
                title: Row(
                  children: [
                    Text(
                      "Marut Jagarlamudi",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      " [ M ]",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Text(
                    "Would you like to try a bet with me. Accept if yo",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "HelveticaNeueMedium",
                        fontSize: 16),
                  ),
                ),
                // trailing: Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                // Text("",
                //     style: TextStyle(
                //       color: Color(0XFF909090),
                //       fontWeight: FontWeight.w500,
                //       fontSize: 14,
                //     )),
                // SizedBox(height: 10),
                // Container(
                //     height: 20,
                //     width: 20,
                //     decoration: BoxDecoration(
                //         color: Colors.green,
                //         borderRadius: BorderRadius.all(Radius.circular(50))),
                //     child: Align(
                //         child:
                //             Text("2", style: TextStyle(color: Colors.white)))),
                //   ],
                // ),
              ),
              ListTile(
                tileColor: Color(0xFFDBF8D9),
                onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Chating()));
                },
                leading: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i1.wp.com/www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/square-profile-pic-2.jpg")))),
                title: Row(
                  children: [
                    Text(
                      "Moulik Prithu",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      " [ M ]",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Text(
                    "Would you like to try a bet with me. Accept if yo",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "HelveticaNeueMedium",
                        fontSize: 16),
                  ),
                ),
                // trailing: Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                // Text("",
                //     style: TextStyle(
                //       color: Color(0XFF909090),
                //       fontWeight: FontWeight.w500,
                //       fontSize: 14,
                //     )),
                // SizedBox(height: 10),
                // Container(
                //     height: 20,
                //     width: 20,
                //     decoration: BoxDecoration(
                //         color: Colors.green,
                //         borderRadius: BorderRadius.all(Radius.circular(50))),
                //     child: Align(
                //         child:
                //             Text("2", style: TextStyle(color: Colors.white)))),
                //   ],
                // ),
              ),
              ListTile(
                tileColor: Color(0xFFDBF8D9),
                onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Chating()));
                },
                leading: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i1.wp.com/www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/square-profile-pic-2.jpg")))),
                title: Row(
                  children: [
                    Text(
                      "Rishikesh Mirchandani",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      " [ M ]",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Text(
                    "Would you like to try a bet with me. Accept if yo",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "HelveticaNeueMedium",
                        fontSize: 16),
                  ),
                ),
                // trailing: Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                // Text("",
                //     style: TextStyle(
                //       color: Color(0XFF909090),
                //       fontWeight: FontWeight.w500,
                //       fontSize: 14,
                //     )),
                // SizedBox(height: 10),
                // Container(
                //     height: 20,
                //     width: 20,
                //     decoration: BoxDecoration(
                //         color: Colors.green,
                //         borderRadius: BorderRadius.all(Radius.circular(50))),
                //     child: Align(
                //         child:
                //             Text("2", style: TextStyle(color: Colors.white)))),
                //   ],
                // ),
              ),
              ListTile(
                tileColor: Color(0xFFDBF8D9),
                onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Chating()));
                },
                leading: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i1.wp.com/www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/square-profile-pic-2.jpg")))),
                title: Row(
                  children: [
                    Text(
                      "Anarghya Sravan",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      " [ M ]",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Text(
                    "Would you like to try a bet with me. Accept if yo",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "HelveticaNeueMedium",
                        fontSize: 16),
                  ),
                ),
                // trailing: Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                // Text("",
                //     style: TextStyle(
                //       color: Color(0XFF909090),
                //       fontWeight: FontWeight.w500,
                //       fontSize: 14,
                //     )),
                // SizedBox(height: 10),
                // Container(
                //     height: 20,
                //     width: 20,
                //     decoration: BoxDecoration(
                //         color: Colors.green,
                //         borderRadius: BorderRadius.all(Radius.circular(50))),
                //     child: Align(
                //         child:
                //             Text("2", style: TextStyle(color: Colors.white)))),
                //   ],
                // ),
              ),
            ],
          ),
        ])),
      ),
    );
  }
}
