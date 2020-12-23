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
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.grey.shade600,
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          "Name: Surendra Bhati",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ]),
                      Row(children: [
                        Text("Gender: M           Age: 32 years old"),
                      ]),
                    ],
                  ),
                ),
                Container(
                    color: Colors.indigo,
                    height: 400,
                    child: Column(children: [
                      Text("Add Medicens"),
                      Container(
                        color: Colors.white,
                        child: Column(children: [
                          SimpleAutoCompleteTextField(
                            suggestions: [
                              "Apple",
                              "Armidillo",
                              "Actual",
                              "Actuary",
                              "America",
                              "Argentina",
                              "Australia",
                              "Antarctica",
                              "Blueberry",
                            ],
                            decoration: InputDecoration(
                                filled: true,
                                labelText: "Medicine name",
                                fillColor: Colors.black12,
                                hintText: 'Medicine name'),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Taken Time",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: Icon(Icons.arrow_downward),
                                    iconSize: 24,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        print(newValue);
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: <String>[
                                      'One',
                                      'Two',
                                      'Free',
                                      'Four'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              )
                            ],
                          )
                        ]),
                      )
                    ]))
              ],
            )),
      ),
    );
  }
}
