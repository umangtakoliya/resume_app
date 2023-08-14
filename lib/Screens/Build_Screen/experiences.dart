import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class Experiences extends StatefulWidget {
  const Experiences({super.key});

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  String? Status;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Globals.bgColor,
        actions: [
          IconButton(
            onPressed: () {
              formKey.currentState!.reset();
              Globals.compnyc.clear();
              Globals.schoolec.clear();
              Globals.roles1c.clear();
              Globals.address1c.clear();
              Globals.address2c.clear();
              Globals.address3c.clear();
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
          "Experience",
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
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.all(20),
                    height: h * .70,
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
                            "Company Name",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.compnyc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Course or Degree";
                              }
                            },
                            controller: Globals.compnyc,
                            onChanged: (val) {
                              setState(() {
                                Globals.compny = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: "New Enterprise, San Francisco",
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "School/College/Institute",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.schoolec.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter School";
                              }
                            },
                            controller: Globals.schoolec,
                            onChanged: (val) {
                              setState(() {
                                Globals.schoole = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: " Quality Test Engineer ",
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Roles (optional)",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.roles1c.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Result";
                              }
                            },
                            controller: Globals.roles1c,
                            onChanged: (val) {
                              setState(() {
                                Globals.roles1 = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText:
                                  "Working with team members to come up with new concepts and product analysis...",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Employed Status",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Radio(
                                  activeColor: Globals.bgColor,
                                  value: "Employed",
                                  groupValue: Status,
                                  onChanged: (val) {
                                    setState(() {
                                      Status = val;
                                    });
                                  }),
                              Text(
                                "Previously Employed",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 10),
                              ),
                              Radio(
                                  activeColor: Globals.bgColor,
                                  value: "Status",
                                  groupValue: Status,
                                  onChanged: (val) {
                                    setState(() {
                                      Status = val;
                                    });
                                  }),
                              Text(
                                "Currently Employed",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 10),
                              )
                            ],
                          ),
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
