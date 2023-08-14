import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
              Globals.p_titlec.clear();
              Globals.p_descriptionc.clear();
              Globals.technologic.clear();
              Globals.rolesc.clear();
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
          "Projects",
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
                    height: h * .70,
                    width: w * .9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Globals.textColor,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Project Title",
                            style: Globals.mystyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.p_titlec.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter title";
                              }
                            },
                            controller: Globals.p_titlec,
                            onChanged: (val) {
                              setState(() {
                                Globals.p_title = val;
                              });
                            },
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              hintText: "Resume Builder App",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            "Technologies",
                            style: Globals.mystyle,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Globals.bgColor,
                                  value: Globals.c_program,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.c_program = val!;
                                    });
                                  }),
                              Text(
                                "C Programming",
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
                                  value: Globals.c_plus,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.c_plus = val!;
                                    });
                                  }),
                              Text(
                                "C ++",
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
                                  value: Globals.flutter,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.flutter = val!;
                                    });
                                  }),
                              Text(
                                "Flutter",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Roles",
                            style: Globals.mystyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.rolesc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter title";
                              }
                            },
                            controller: Globals.rolesc,
                            onChanged: (val) {
                              setState(() {
                                Globals.roles = val;
                              });
                            },
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              hintText:
                                  "Orrganize team members, Code \nanalysis",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            "Technologies",
                            style: Globals.mystyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.technologic.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Plese Enter Passing Year";
                              }
                            },
                            controller: Globals.technologic,
                            onChanged: (val) {
                              setState(() {
                                Globals.technologi = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "5 - Programmers",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            "Project Descripation",
                            style: Globals.mystyle,
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.p_descriptionc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Plese Enter Passing Year";
                              }
                            },
                            controller: Globals.p_descriptionc,
                            onChanged: (val) {
                              setState(() {
                                Globals.p_description = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter your Project Descripation",
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
