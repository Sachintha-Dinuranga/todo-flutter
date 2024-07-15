import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/util/alert_box.dart';
import 'package:todo/util/todo_list.dart';

class HomePage extends StatefulWidget {
//text controller

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  //list of todo tasks
  List todoList = [
    ["Make tutorial", false],
    ["Do exersize", false]
  ];

  //checkbox checked
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  //save new task
  void saveNewTask() {
    setState(() {
      todoList.add([_controller.text, false]);
    });

    Navigator.of(context).pop();
  }

  //create new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertBox(
          controller: _controller,
          onSaved: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "TaskFlow",
          style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  color: Colors.black)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoList(
              taskName: todoList[index][0],
              isChecked: todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index));
        },
      ),
    );
  }
}
