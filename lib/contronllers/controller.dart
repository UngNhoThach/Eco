import 'package:get/get.dart';
import '../models/category.dart';

class Controller extends GetxController {
  var userInfo = UserInformation(
          address: '203 nguyen trai', id: 01, username: 'Ung Nho Thach')
      .obs;

  // Uppder case username
  void convertUpperCase() {
    userInfo.update((val) {
      val!.username = val.username!.toUpperCase();
    });
  }

  // Is lower case
  void convetIsLowerCase() {
    userInfo.update((val) {
      val!.username = val.username!.toLowerCase();
    });
  }
}
