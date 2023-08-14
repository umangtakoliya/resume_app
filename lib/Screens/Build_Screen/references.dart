import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
              Globals.r_namec.clear();
              Globals.designationc.clear();
              Globals.institutec.clear();
            },
            icon: Icon(
              Icons.refresh,
              color: Globals.textColor,
            ),
          ),
          IconButton(
            onPressed: () {
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
            icon: Icon(
              Icons.check,
              color: Globals.textColor,
            ),
          ),
        ],
        toolbarHeight: 140,
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
          "References",
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
            child: Container(
              margin: EdgeInsets.only(
                left: 18,
                top: 20,
              ),
              padding: EdgeInsets.all(15),
              height: h * .50,
              width: w * .9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Globals.textColor,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reference Name",
                      style: TextStyle(
                        fontSize: 23,
                        color: Globals.bgColor,
                      ),
                    ),
                    TextFormField(
                      onFieldSubmitted: (val) {
                        setState(() {
                          Globals.r_namec.text = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Plese Enter Reference";
                        }
                      },
                      controller: Globals.r_namec,
                      onChanged: (val) {
                        setState(() {
                          Globals.r_name = val;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Suresh Shah",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Designation",
                      style: TextStyle(
                        fontSize: 23,
                        color: Globals.bgColor,
                      ),
                    ),
                    TextFormField(
                      onFieldSubmitted: (val) {
                        setState(() {
                          Globals.designationc.text = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Plese Enter Designation";
                        }
                      },
                      controller: Globals.designationc,
                      onChanged: (val) {
                        setState(() {
                          Globals.designation = val;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Marketing Manager,ID-342332",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Organization/Institute",
                      style: TextStyle(
                        fontSize: 23,
                        color: Globals.bgColor,
                      ),
                    ),
                    TextFormField(
                      onFieldSubmitted: (val) {
                        setState(() {
                          Globals.institutec.text = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Plese Enter Institute";
                        }
                      },
                      controller: Globals.institutec,
                      onChanged: (val) {
                        setState(() {
                          Globals.institute = val;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Green Energy Pvt. Ltd.",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
