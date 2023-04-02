import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/ui/theme.dart';

class NotifiedPage extends StatelessWidget {
  const NotifiedPage({Key? key, required this.label}) : super(key: key);
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.grey.shade600 : Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: Text(
          this.label!.split("|")[0],
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Get.isDarkMode?Colors.white:Colors.grey.shade400
          ),
          child: Center(
            child: Text(
              this.label!.split("|")[1],
              style: TextStyle(color: Get.isDarkMode?Colors.black:Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
