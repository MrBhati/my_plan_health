import 'package:flutter/material.dart';
import 'package:plan_my_health/Helpers/ApiHelper.dart';
import 'package:plan_my_health/Helpers/Medicine.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:plan_my_health/model/Diagnosis.dart';
import 'package:plan_my_health/model/Medicines.dart';
import 'package:plan_my_health/model/Specialities.dart';

class Prescription extends StatefulWidget {
  Prescription({Key key}) : super(key: key);

  @override
  _PrescriptionState createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  GlobalKey<AutoCompleteTextFieldState<Medicinelist>> key = new GlobalKey();
  ApiHelper apiHelper = ApiHelper();
  TextEditingController medicineSerchController;
  List<Map<String, String>> dia = [];
  List<Map<String, String>> spe = [];
  List<Medicinelist> medicinelist = [];
  String diagnosisSelected;
  String specialitiesSelected;
  var currentSelectedValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMedicines();
    getDiagnosis();
    getSpecialities();
    medicineSerchController = TextEditingController();
  }

  void getSpecialities() {
    apiHelper.getSpecialitieslist().then((value) {
      print("get Diagnosis");
      print(value[0].name);
      for (Specialitieslist specialitieslist in value) {
        spe.add({"name": specialitieslist.name, "sId": specialitieslist.sId});
        print(specialitieslist.sId.toString());
      }
      setState(() {});
    });
  }

  void getDiagnosis() {
    apiHelper.getDiagnosislist().then((value) {
      for (Diagnosislist diagnosislist in value) {
        dia.add({
          "diagnosisName": diagnosislist.diagnosisName,
          "sId": diagnosislist.sId
        });
      }
      setState(() {});
    });
  }

  void getMedicines() {
    apiHelper.getMedicinelist().then((value) {
      setState(() {
        medicinelist = value;
      });
    });
  }

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
                              SizedBox(height: 8),
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    // color: AppColors.EDITTEXT_BG_COLOR,
                                    // border: Border.all(
                                    //     color: AppColors.EDITTEXT_BORDER_COLOR,
                                    //     width: 1.0),
                                    borderRadius: BorderRadius.circular(4)),
                                child: DropdownButtonFormField(
                                  autovalidateMode: AutovalidateMode.disabled,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0)),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0)),
                                    labelText: "Suspected Disease",
                                    hintText: "Select Suspected Disease",
                                  ),
                                  elevation: 2,
                                  icon: Icon(Icons.arrow_drop_down),
                                  value: diagnosisSelected,
                                  onChanged: (value) {
                                    setState(() {});
                                    diagnosisSelected = value;
                                  },
                                  items: dia.map((type) {
                                    return DropdownMenuItem(
                                      value: type['sId'],
                                      child: Text(
                                        type['diagnosisName'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    );
                                  }).toList(),
                                  validator: (value) {
                                    if (value == null) {
                                      return "Select Country is required";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 12),
                              // Container(
                              //   margin:
                              //       const EdgeInsets.only(top: 5, bottom: 10),
                              //   padding:
                              //       const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              //   decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     border: Border.all(
                              //       color: Color(
                              //           0xFFDDDDDD), //                   <--- border color
                              //       width: 0.8,
                              //     ),
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(8)),
                              //     boxShadow: [
                              //       BoxShadow(
                              //         color: Color(0xFF0000000F),
                              //         blurRadius: 25.0, // soften the shadow
                              //         spreadRadius: 5.0, //extend the shadow
                              //         offset: Offset(
                              //           15.0, // Move to right 10  horizontally
                              //           15.0, // Move to bottom 10 Vertically
                              //         ),
                              //       )
                              //     ],
                              //   ),
                              //   child: SimpleAutoCompleteTextField(
                              //     suggestions: [
                              //       "Malaria",
                              //       "Cold",
                              //       "Swine Flu",
                              //       "lurgy",
                              //     ],
                              //     decoration: InputDecoration(
                              //         filled: true,
                              //         fillColor: Colors.black12,
                              //         hintText: 'Suspected Disease'),
                              //   ),
                              // ),

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
                                  GestureDetector(
                                      onTap: () {
                                        addMedicines(context);
                                      },
                                      child: Icon(Icons.add, size: 30))
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
                                              Text(" COMPLETE BLOOD CHE",
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
                              SizedBox(height: 12),
                              Text(
                                "Select Specialities",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    // color: AppColors.EDITTEXT_BG_COLOR,
                                    // border: Border.all(
                                    //     color: AppColors.EDITTEXT_BORDER_COLOR,
                                    //     width: 1.0),
                                    borderRadius: BorderRadius.circular(4)),
                                child: DropdownButtonFormField(
                                  autovalidateMode: AutovalidateMode.disabled,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0)),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0)),
                                    labelText: "Specialities",
                                    hintText: "Select Specialities",
                                  ),
                                  elevation: 2,
                                  icon: Icon(Icons.arrow_drop_down),
                                  value: specialitiesSelected,
                                  onChanged: (value) {
                                    setState(() {});
                                    specialitiesSelected = value;
                                  },
                                  items: spe.map((type) {
                                    return DropdownMenuItem(
                                      value: type['sId'],
                                      child: Text(
                                        type['name'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    );
                                  }).toList(),
                                  validator: (value) {
                                    if (value == null) {
                                      return "Select Country is required";
                                    }
                                    return null;
                                  },
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

  Widget medCard(Medicinelist medicinelist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              medicinelist.drugName,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              medicinelist.composition,
              style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }

  void addMedicines(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: false,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height - 100,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(16.0),
                topRight: const Radius.circular(16.0),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Add Mediciens",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("close  "),
                    )
                  ],
                ),
                SizedBox(height: 20),
                AutoCompleteTextField<Medicinelist>(
                  key: key,
                  controller: medicineSerchController,
                  clearOnSubmit: false,
                  suggestions: medicinelist,
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                  decoration: InputDecoration(
                    counterText: "",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0)),
                    labelText: "Search Medicines",

                    hintText: "Search Medicines",

                    // prefix: Icon(
                    //   Icons.search,
                    //   color: Colors.green,
                    // ),
                  ),
                  itemFilter: (item, query) {
                    return item.drugName
                        .toLowerCase()
                        .startsWith(query.toLowerCase());
                  },
                  itemSorter: (a, b) {
                    return a.drugName.compareTo(b.drugName);
                  },
                  itemSubmitted: (item) {
                    setState(() {
                      medicineSerchController.text = item.drugName;
                    });
                  },
                  itemBuilder: (context, item) {
                    // ui for the autocompelete row
                    return medCard(item);
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      decoration: BoxDecoration(
                          // color: AppColors.EDITTEXT_BG_COLOR,
                          // border: Border.all(
                          //     color: AppColors.EDITTEXT_BORDER_COLOR,
                          //     width: 1.0),
                          borderRadius: BorderRadius.circular(4)),
                      child: DropdownButtonFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          labelText: "Taken Time",
                          hintText: "Taken Time",
                        ),
                        elevation: 2,
                        icon: Icon(Icons.arrow_drop_down),
                        value: specialitiesSelected,
                        onChanged: (value) {
                          setState(() {});
                          specialitiesSelected = value;
                        },
                        items: dia.map((type) {
                          return DropdownMenuItem(
                            value: type['sId'],
                            child: Text(
                              type['diagnosisName'],
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        validator: (value) {
                          if (value == null) {
                            return "Taken Time is required";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      decoration: BoxDecoration(
                          // color: AppColors.EDITTEXT_BG_COLOR,
                          // border: Border.all(
                          //     color: AppColors.EDITTEXT_BORDER_COLOR,
                          //     width: 1.0),
                          borderRadius: BorderRadius.circular(4)),
                      child: DropdownButtonFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0)),
                          labelText: "Taken Quantity ",
                          hintText: "Taken Quantity",
                        ),
                        elevation: 2,
                        icon: Icon(Icons.arrow_drop_down),
                        value: specialitiesSelected,
                        onChanged: (value) {
                          setState(() {});
                          specialitiesSelected = value;
                        },
                        items: dia.map((type) {
                          return DropdownMenuItem(
                            value: type['sId'],
                            child: Text(
                              type['diagnosisName'],
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        validator: (value) {
                          if (value == null) {
                            return "Select Country is required";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      // color: AppColors.EDITTEXT_BG_COLOR,
                      // border: Border.all(
                      //     color: AppColors.EDITTEXT_BORDER_COLOR,
                      //     width: 1.0),
                      borderRadius: BorderRadius.circular(4)),
                  child: DropdownButtonFormField(
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      labelText: "Taken With ",
                      hintText: "Taken With",
                    ),
                    elevation: 2,
                    icon: Icon(Icons.arrow_drop_down),
                    value: specialitiesSelected,
                    onChanged: (value) {
                      setState(() {});
                      specialitiesSelected = value;
                    },
                    items: dia.map((type) {
                      return DropdownMenuItem(
                        value: type['sId'],
                        child: Text(
                          type['diagnosisName'],
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null) {
                        return "Select Country is required";
                      }
                      return null;
                    },
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Add Medicien",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
