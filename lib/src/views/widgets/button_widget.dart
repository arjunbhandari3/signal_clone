import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({required this.title, required this.onpress});
  final String title;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 40,
      minWidth: Get.width,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Colors.blue[700],
        onPressed: () {
          onpress();
        },
        child: Text(
          "NEXT",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
