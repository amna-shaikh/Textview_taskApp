import 'package:flutter/material.dart';
import 'package:task_app/screens/textview.dart';
import 'package:task_app/screens/textview_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    super.dispose();
  }

  List<TextEditingController> controllers = [];
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();

  List<Widget> MyViewList = [];
  bool isAdding = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Add TextField",
          style: TextStyle(
              color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                if (controller1.text.isEmpty ||
                    controller2.text.isEmpty ||
                    controller3.text.isEmpty ||
                    controller4.text.isEmpty ||
                    controller5.text.isEmpty) {
                  final snackBar = SnackBar(
                    content: const Text('Please fill all fields!'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          TextViewScreen(TextList: controllers),
                    ),
                  );
                }
              },
              child: Text("Save"))
        ],
      ),
      body: MyViewList.isNotEmpty
          ? ListView.builder(
              itemCount: MyViewList.length,
              itemBuilder: (context, index) {
                return MyViewList[index];
              },
            )
          : Center(
              child: Container(
                child: const Text(
                  "There is no item in the list.\n Press + to Add new Items",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              //   isAdding = true;
              MyViewList.add(Textview(
                //Delete the TextField Widgets button
                onDeleteButton: () {
                  setState(() {
                    final index = MyViewList.indexOf(MyViewList.last);
                    MyViewList.removeAt(index);
                    controllers.removeAt(index);

                    //  MyViewList.removeLast();
                  });
                },
                controller1: controller1,
                controller2: controller2,
                controller3: controller3,
                controller4: controller4,
                controller5: controller5,
              ));
              controllers.add(controller1);
              controllers.add(controller2);
              controllers.add(controller3);
              controllers.add(controller4);
              controllers.add(controller5);
            });
          }),
    );
  }
}
