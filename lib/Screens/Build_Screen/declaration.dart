import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xffededed),
        appBar: AppBar(
          backgroundColor: Globals.bgColor,
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 120,
          title: Text(
            "Declaration",
            style: TextStyle(
                color: Globals.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Globals.textColor,
            ),
          ),
          actions: [
            Switch(
              value: isTrue,
              onChanged: (val) {
                setState(() {
                  isTrue = val;
                });
              },
            ),
          ],
        ),
        body: (isTrue == false)
            ? Container()
            : GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 25),
                            padding: EdgeInsets.all(20),
                            height: h * .7,
                            width: w * .9,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "🎯",
                                  style: TextStyle(fontSize: 60),
                                ),
                                TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Plese Enter Number";
                                    }
                                  },
                                  onSaved: (val) {
                                    Globals.dis = val!;
                                  },
                                  decoration: const InputDecoration(
                                      hintText: "Descripation",
                                      border: OutlineInputBorder()),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Divider(
                                  thickness: 3,
                                ),
                                Text("Date"),
                                TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Plese Enter Number";
                                    }
                                  },
                                  keyboardType: TextInputType.datetime,
                                  onSaved: (val) {
                                    Globals.date = val!;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "DD/MM/YYYY",
                                    helperStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                Text("Place(Interview\nVenue/city)"),
                                TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Plese Enter Number";
                                    }
                                  },
                                  onSaved: (val) {
                                    Globals.city = val!;
                                  },
                                  decoration: const InputDecoration(
                                      hintText: "Eg.Surat",
                                      border: OutlineInputBorder()),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      formKey.currentState!.save();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content:
                                              Text("Saved Successfully..."),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              "Plese Enter Full Detail..."),
                                        ),
                                      );
                                    }
                                    ;
                                  },
                                  child: Center(
                                    child: Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Globals.bgColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SAVE",
                                        style: TextStyle(
                                            color: Globals.textColor,
                                            fontSize: 20),
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
              ));
  }
}
