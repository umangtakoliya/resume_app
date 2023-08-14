import 'package:flutter/material.dart';
import 'package:resume_app/utils/my_build_options.dart';

import '../utils/globals.dart';

class BuildOptions extends StatefulWidget {
  const BuildOptions({super.key});

  @override
  State<BuildOptions> createState() => _BuildOptionsState();
}

class _BuildOptionsState extends State<BuildOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'pdf');
        },
        child: Icon(
          Icons.print,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Globals.bgColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Globals.textColor,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Resume Workspace",
                        style: TextStyle(
                          color: Globals.textColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Build Options",
                    style: TextStyle(
                      color: Globals.textColor,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Column(
                children: MyBuildOptions.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    e["icon"],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            e["name"],
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(e["route_name"]);
                            },
                            icon: Icon(
                              Icons.navigate_next,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
