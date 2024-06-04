import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgrouncolor),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight / 10,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                    image:
                        AssetImage("lib/assets/images/add_new_task_header.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close,
                          size: 35, color: Colors.white),
                    ),
                    const Expanded(
                      child: Text(
                        "Add New Task",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Task Title"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter Task Title",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Category"),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text("Category Selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/category_1.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text("Category Selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/category_2.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text("Category Selected"),
                          ),
                        );
                      },
                      child: Image.asset("lib/assets/images/category_3.png"),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Date"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Time"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Notes"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 300,
                  child: TextField(
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Save Task"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
