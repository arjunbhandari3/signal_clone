import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_clone/src/views/register_view.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: Get.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(18.0),
                      width: Get.width - 50,
                      height: Get.height / 2,
                      child: Image.asset("assets/images/welcome.jpg"),
                    ),
                  ),
                  Text(
                    "Take privacy with you.\nBe yourself in every\nmessage.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    "Terms & Privacy Policy",
                    style: TextStyle(color: Colors.grey[600], fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonTheme(
                    height: 40,
                    minWidth: Get.width * 0.65,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.blue[700],
                      onPressed: () {
                        Get.offAll(RegisterView());
                      },
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Restore backup",
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
