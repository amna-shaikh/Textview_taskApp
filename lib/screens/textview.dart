import 'package:flutter/material.dart';
import 'package:task_app/widgets/textfield.dart';

// ignore: must_be_immutable
class Textview extends StatelessWidget {
  Function onDeleteButton;

  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;
  final TextEditingController controller5;

  Textview(
      {super.key,
      required this.onDeleteButton,
      required this.controller1,
      required this.controller2,
      required this.controller3,
      required this.controller4,
      required this.controller5});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: const Color.fromARGB(31, 88, 3, 3),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            CustomTextField(
              textIndex: 1,
              textcontroller: controller1,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              textIndex: 2,
              textcontroller: controller2,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              textIndex: 3,
              textcontroller: controller3,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              textIndex: 4,
              textcontroller: controller4,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              textIndex: 5,
              textcontroller: controller5,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  onDeleteButton();
                },
                child: const Text("Delete"))
          ],
        ),
      ),
    );
  }
}
