import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_clone/src/views/confirm_pin_view.dart';

class CreatePinView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text(
                'Create your PIN',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: RichText(
                  text: TextSpan(
                    text: ' PINs keep information stored with'
                        '\n  Signal encrypted so only you can '
                        '\n     access it. Your profile, settings, '
                        '\n  and contacts will restore when you'
                        "\nreinstall . You won't need your PIN to"
                        '\n         open the app.',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Learn more',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Text(
                  'PIN must be at least 4 digits',
                  style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              ButtonTheme(
                height: 40,
                minWidth: Get.width - 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.blue[700],
                  onPressed: () {
                    Get.offAll(ConfirmPinView());
                  },
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
