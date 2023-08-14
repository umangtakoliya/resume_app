import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  String? marrid;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              formKey.currentState!.reset();
              Globals.dobc.clear();
              Globals.nationalityc.clear();
            },
            icon: Icon(
              Icons.refresh,
              color: Globals.textColor,
            ),
          ),
        ],
        toolbarHeight: 120,
        backgroundColor: Globals.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Globals.textColor,
          ),
        ),
        title: Text(
          "Personal Details",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top: 30),
                    height: h * .65,
                    width: w * .9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Globals.textColor,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "DOB",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.dobc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "DD/MM/YYYY";
                              }
                            },
                            controller: Globals.dobc,
                            onChanged: (val) {
                              setState(() {
                                Globals.dob = val;
                              });
                            },
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              hintText: "DD/MM/YYYY",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            "Marital Status",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  activeColor: Globals.bgColor,
                                  value: "Single",
                                  groupValue: marrid,
                                  onChanged: (val) {
                                    setState(() {
                                      marrid = val;
                                    });
                                  }),
                              Text(
                                "Singal",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  activeColor: Globals.bgColor,
                                  value: "Married",
                                  groupValue: marrid,
                                  onChanged: (val) {
                                    setState(() {
                                      marrid = val;
                                    });
                                  }),
                              Text(
                                "Married",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Languages Known",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Globals.bgColor,
                                  value: Globals.english,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.english = val!;
                                    });
                                  }),
                              Text(
                                "English",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Globals.bgColor,
                                  value: Globals.hindi,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.hindi = val!;
                                    });
                                  }),
                              Text(
                                "Hindi",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Globals.bgColor,
                                  value: Globals.gujarati,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.gujarati = val!;
                                    });
                                  }),
                              Text(
                                "Gujarati",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Nationality",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.nationalityc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Plese Enter Passing Year";
                              }
                            },
                            controller: Globals.nationalityc,
                            onChanged: (val) {
                              setState(() {
                                Globals.nationality = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Indian",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Saved Successfully..."),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Plese Enter Full Detail..."),
                                  ),
                                );
                              }
                            },
                            child: Center(
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 110,
                                color: Globals.bgColor,
                                child: Text(
                                  "SAVE",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Globals.textColor,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
