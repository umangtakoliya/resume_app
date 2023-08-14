import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/globals.dart';

class ContectInfo extends StatefulWidget {
  const ContectInfo({super.key});

  @override
  State<ContectInfo> createState() => _ContectInfoState();
}

class _ContectInfoState extends State<ContectInfo> {
  XFile? image;
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
              Globals.namec.clear();
              Globals.emailc.clear();
              Globals.numberc.clear();
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
        toolbarHeight: 90,
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
          "Resume Workspace",
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
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Globals.bgColor,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Globals.initialIndex = 0;
                          });
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 15,
                              child: Container(
                                color: Globals.bgColor,
                                child: Center(
                                  child: Text(
                                    "Contact",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Globals.textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: (Globals.initialIndex == 0)
                                    ? Colors.yellow
                                    : Globals.bgColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Globals.initialIndex = 1;
                          });
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 15,
                              child: Container(
                                color: Globals.bgColor,
                                child: Center(
                                  child: Text(
                                    "Photo",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Globals.textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: (Globals.initialIndex == 1)
                                    ? Colors.yellow
                                    : Globals.bgColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: IndexedStack(
                index: Globals.initialIndex,
                children: [
                  SingleChildScrollView(
                    child: Form(
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: h * .45,
                              width: w * .9,
                              color: Globals.textColor,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Icon(
                                            Icons.person,
                                            size: 35,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            onFieldSubmitted: (val) {
                                              setState(() {
                                                Globals.namec.text = val;
                                              });
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Plese Enter Name";
                                              }
                                            },
                                            controller: Globals.namec,
                                            onChanged: (val) {
                                              setState(() {
                                                Globals.name = val;
                                              });
                                            },
                                            decoration: InputDecoration(
                                              hintText: "Name",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Icon(
                                            Icons.email,
                                            size: 35,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            onFieldSubmitted: (val) {
                                              setState(() {
                                                Globals.emailc.text = val;
                                              });
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Plese Enter Email";
                                              }
                                            },
                                            controller: Globals.emailc,
                                            onChanged: (val) {
                                              setState(() {
                                                Globals.email = val;
                                              });
                                            },
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                              hintText: "Email",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Icon(
                                            Icons.phone_android,
                                            size: 35,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            onFieldSubmitted: (val) {
                                              setState(() {
                                                Globals.numberc.text = val;
                                              });
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Plese Enter Number";
                                              }
                                            },
                                            controller: Globals.numberc,
                                            onChanged: (val) {
                                              setState(() {
                                                Globals.number = val;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: "Phone",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Icon(
                                            Icons.location_on,
                                            size: 35,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            onFieldSubmitted: (val) {
                                              setState(() {
                                                Globals.address1c.text = val;
                                              });
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Plese Enter Address";
                                              }
                                            },
                                            controller: Globals.address1c,
                                            onChanged: (val) {
                                              setState(() {
                                                Globals.address1 = val;
                                              });
                                            },
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Address(Street,building)",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            onFieldSubmitted: (val) {
                                              setState(() {
                                                Globals.address2c.text = val;
                                              });
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Plese Enter Address1";
                                              }
                                            },
                                            controller: Globals.address2c,
                                            onChanged: (val) {
                                              setState(() {
                                                Globals.address2 = val;
                                              });
                                            },
                                            decoration: InputDecoration(
                                              hintText: "Address2",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            onFieldSubmitted: (val) {
                                              setState(() {
                                                Globals.address3c.text = val;
                                              });
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Plese Enter Address";
                                              }
                                            },
                                            controller: Globals.address3c,
                                            onChanged: (val) {
                                              setState(() {
                                                Globals.address3 = val;
                                              });
                                            },
                                            decoration: InputDecoration(
                                              hintText: "Address3",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          height: h * .33,
                          width: w * .9,
                          color: Globals.textColor,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 70,
                                foregroundImage: FileImage(
                                  File(
                                    "${image?.path}",
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      image = await Globals.picker.pickImage(
                                        source: ImageSource.camera,
                                      );
                                      setState(() {
                                        Globals.imagePath = image!.path;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.camera_alt,
                                      size: 35,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      image = await Globals.picker.pickImage(
                                        source: ImageSource.gallery,
                                      );
                                      setState(() {
                                        Globals.imagePath = image!.path;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.panorama,
                                      size: 35,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
