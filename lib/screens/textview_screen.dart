// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextViewScreen extends StatelessWidget {
  List<TextEditingController> TextList;
  TextViewScreen({super.key, required this.TextList});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemCount: TextList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Color.fromARGB(31, 88, 3, 3),
              child: Center(
                  child: Text("${TextList[index].text}",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500))),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
