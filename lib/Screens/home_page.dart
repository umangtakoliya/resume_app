import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('build');
        },
        backgroundColor: Colors.blueAccent,
        child: Icon(
          Icons.add,
          color: Globals.textColor,
          size: 45,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Resume Builder",
                    style: TextStyle(
                      color: Globals.textColor,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "RESUMES",
                    style: TextStyle(
                      color: Globals.textColor,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "lib/utils/Assets/Build_Icons/open-cardboard-box.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "No Resumes + Create new resume.",
                  style: TextStyle(
                    color: Globals.text1,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
