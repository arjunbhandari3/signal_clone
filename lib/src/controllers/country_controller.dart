import 'package:get/get.dart';

class CountryController extends GetxController {
  var selectcodename = "".obs;
  var selecteddial = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  void choosevalue(String name, String dialcode) {
    selectcodename.value = name;
    selecteddial.value = dialcode;
    print(dialcode);
    update();
  }
}
