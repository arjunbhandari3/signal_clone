import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_clone/src/controllers/country_controller.dart';
import 'package:signal_clone/src/views/country_view.dart';
import 'package:signal_clone/src/views/otp_view.dart';
import 'package:signal_clone/src/views/widgets/button_widget.dart';

class RegisterView extends StatelessWidget {
  final controller = Get.put(CountryController());

  final contryname = TextEditingController();
  final contrycode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Obx(() {
            contryname.text = controller!.selectcodename.value!;
            contrycode.text = controller!.selecteddial.value!;
            print(controller!.selectcodename);
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Enter your phone number\nto get started",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You will recevie a verification code Carrier\n rates may apply.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: contryname,
                    onTap: () {
                      Get.to(CountryView());
                    },
                    decoration: InputDecoration(
                        hintText: "Choose your country",
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextField(
                          controller: contrycode,
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                              hintText: "+ 00",
                              enabled: false,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              labelText: "Phone Number",
                              hintText: "Phone Number",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    title: "NEXT",
                    onpress: () {
                      var fullno = contryname.text + contrycode.text;
                      Get.offAll(OTPView(fullno));
                    },
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
