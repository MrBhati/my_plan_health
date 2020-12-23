import 'package:flutter/material.dart';
import 'package:plan_my_health/Helpers/Medicine.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';

class Prescription extends StatefulWidget {
  Prescription({Key key}) : super(key: key);

  @override
  _PrescriptionState createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  @override
  Medicine userSave = Medicine();
  String dropdownValue;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 15, 15),
                      child: Text(
                        "Write Prescription",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Colors.grey.shade600,
                    child: Column(
                      children: [
                        Row(children: [
                          Text(
                            "Name: Surendra Bhati",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ]),
                        SizedBox(height: 5),
                        Row(children: [
                          Text("Gender: M           Age: 32 years old"),
                        ]),
                      ],
                    ),
                  ),
                  Container(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 10),
                      height: MediaQuery.of(context).size.height - 184,
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Select Suspected Disease",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(
                                        0xFFDDDDDD), //                   <--- border color
                                    width: 0.8,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF0000000F),
                                      blurRadius: 25.0, // soften the shadow
                                      spreadRadius: 5.0, //extend the shadow
                                      offset: Offset(
                                        15.0, // Move to right 10  horizontally
                                        15.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                ),
                                child: SimpleAutoCompleteTextField(
                                  suggestions: [
                                    "Malaria",
                                    "Cold",
                                    "Swine Flu",
                                    "lurgy",
                                  ],
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.black12,
                                      hintText: 'Suspected Disease'),
                                ),
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Add Medicens",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.add, size: 30)
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(
                                        0xFFDDDDDD), //                   <--- border color
                                    width: 0.8,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF0000000F),
                                      blurRadius: 25.0, // soften the shadow
                                      spreadRadius: 5.0, //extend the shadow
                                      offset: Offset(
                                        15.0, // Move to right 10  horizontally
                                        15.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Jean Siagra 50mg Tablet",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          Icon(Icons.delete, size: 22)
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Text(
                                            "2 time in day, 1 tablet for 1 week",
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Select Test",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.add, size: 30)
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(
                                        0xFFDDDDDD), //                   <--- border color
                                    width: 0.8,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF0000000F),
                                      blurRadius: 25.0, // soften the shadow
                                      spreadRadius: 5.0, //extend the shadow
                                      offset: Offset(
                                        15.0, // Move to right 10  horizontally
                                        15.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.pages),
                                              Text(" COMPLETE BLOOD CHECKUP",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                            ],
                                          ),
                                          Icon(Icons.delete, size: 22)
                                        ]),
                                    SizedBox(height: 8),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.pages),
                                              Text(" ROUTINE URINE ANALYSIS",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                            ],
                                          ),
                                          Icon(Icons.delete, size: 22)
                                        ]),
                                    SizedBox(height: 8),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.pages),
                                              Text(" FASTING BLOOD SUGAR",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                            ],
                                          ),
                                          Icon(Icons.delete, size: 22)
                                        ]),
                                  ],
                                ),
                              ),

                              // Container(
                              //   color: Colors.white,
                              //   child: Column(children: [
                              //     Row(
                              //       children: [
                              //         Column(
                              //           children: [
                              //             Text(
                              //               "Taken Time",
                              //               style: TextStyle(fontSize: 10),
                              //             ),
                              //             DropdownButton<String>(
                              //               value: dropdownValue,
                              //               icon: Icon(Icons.arrow_downward),
                              //               iconSize: 24,
                              //               elevation: 16,
                              //               style: TextStyle(
                              //                   color: Colors.deepPurple),
                              //               underline: Container(
                              //                 height: 2,
                              //                 color: Colors.deepPurpleAccent,
                              //               ),
                              //               onChanged: (String newValue) {
                              //                 setState(() {
                              //                   print(newValue);
                              //                   dropdownValue = newValue;
                              //                 });
                              //               },
                              //               items: <String>[
                              //                 'One',
                              //                 'Two',
                              //                 'Free',
                              //                 'Four'
                              //               ].map<DropdownMenuItem<String>>(
                              //                   (String value) {
                              //                 return DropdownMenuItem<String>(
                              //                   value: value,
                              //                   child: Text(value),
                              //                 );
                              //               }).toList(),
                              //             ),
                              //           ],
                              //         )
                              //       ],
                              //     )
                              //   ]),
                              // ),
                              Text(
                                "Need to Hospitalise",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6))),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            30, 10, 30, 10),
                                        child: Text(
                                          " No ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 100),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6))),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            30, 10, 30, 10),
                                        child: Text(
                                          " Yes ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Select Suspected Disease",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(
                                        0xFFDDDDDD), //                   <--- border color
                                    width: 0.8,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF0000000F),
                                      blurRadius: 25.0, // soften the shadow
                                      spreadRadius: 5.0, //extend the shadow
                                      offset: Offset(
                                        15.0, // Move to right 10  horizontally
                                        15.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                ),
                                child: SimpleAutoCompleteTextField(
                                  suggestions: [
                                    "Anesthesiology",
                                    "Cardiology",
                                    "Dermatology",
                                    "Endocrinology",
                                  ],
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.black12,
                                      hintText: 'specialitiest'),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Wellness Tips",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.add, size: 30)
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(
                                        0xFFDDDDDD), //                   <--- border color
                                    width: 0.8,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF0000000F),
                                      blurRadius: 25.0, // soften the shadow
                                      spreadRadius: 5.0, //extend the shadow
                                      offset: Offset(
                                        15.0, // Move to right 10  horizontally
                                        15.0, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.pages),
                                              Text(" Exercise",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                            ],
                                          ),
                                          Icon(Icons.delete, size: 22)
                                        ]),
                                    SizedBox(height: 8),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.pages),
                                              Text(" Sleep Properly",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                            ],
                                          ),
                                          Icon(Icons.delete, size: 22)
                                        ]),
                                    SizedBox(height: 8),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.pages),
                                              Text(" Drink More water",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                            ],
                                          ),
                                          Icon(Icons.delete, size: 22)
                                        ]),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                              Text(
                                "Remark",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, bottom: 10),
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(
                                          0xFFDDDDDD), //                   <--- border color
                                      width: 0.8,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFF0000000F),
                                        blurRadius: 25.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          15.0, // Move to right 10  horizontally
                                          15.0, // Move to bottom 10 Vertically
                                        ),
                                      )
                                    ],
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Write Rematk'),
                                  )),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "Save Prescription",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                            ]),
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
