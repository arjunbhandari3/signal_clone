import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:signal_clone/src/views/complete_profile_view.dart';
import 'package:signal_clone/src/views/widgets/button_widget.dart';

class OTPView extends StatelessWidget {
  OTPView(this.phoneno);
  final String phoneno;

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  final BoxDecoration pinPutDecoration = BoxDecoration(
    border: Border.all(color: Colors.deepPurpleAccent),
    borderRadius: BorderRadius.circular(15.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Create your PIN",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Confirm your PIN"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: PinPut(
                              eachFieldWidth: 55.0,
                              eachFieldHeight: 55.0,
                              fieldsCount: 6,
                              focusNode: _pinPutFocusNode,
                              controller: _pinPutController,
                              onSubmit: (String pin) {},
                              submittedFieldDecoration: pinPutDecoration,
                              selectedFieldDecoration: pinPutDecoration,
                              followingFieldDecoration: pinPutDecoration,
                              pinAnimationType: PinAnimationType.scale,
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ButtonWidget(
                title: "NEXT",
                onpress: () {
                  Get.offAll(CompleteProfileView());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
