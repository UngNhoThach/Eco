// ignore_for_file: unused_local_variable, unused_element

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:eco/Model/province_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProvinceController extends GetxController {
  var provinceList = <ProvinceModel>[].obs;
  var districtList = <DistrictsModel>[].obs;
  var isLoading = true.obs;

  // variables
  RxBool isClick = false.obs;
  RxBool isHovering = false.obs;
  RxBool isSearch = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchProvinceData();
  }

  // fetch province data
  Future<void> fetchProvinceData() async {
    // check conection internet
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        log('connected');

        const String userUrl = "https://provinces.open-api.vn/api/?depth=3";
        final response = await http.get(Uri.parse(userUrl));
        if (response.statusCode == 200) {
          final List result = json.decode(utf8.decode(response.bodyBytes));
          provinceList.value =
              result.map((e) => ProvinceModel.fromJson(e)).toList();
          isLoading.value = false;
          update();
        } else {
          Get.snackbar('Error Loading data!',
              'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
        }
      }
    } on SocketException catch (_) {
      log('not connected');
    }
  }

  // // fetch district data
  // Future<void> fetchWardData() async {
  //   const String userUrl = "https://provinces.open-api.vn/api/?depth=3";
  //   final response = await http.get(Uri.parse(userUrl));
  //   if (response.statusCode == 200) {
  //     final List result = json.decode(utf8.decode(response.bodyBytes));

  //     provinceList.value =
  //         result.map((e) => ProvinceModel.fromJson(e)).toList();
  //     for (var element in result) {
  //       districtList.value =
  //       // json.decode(utf8.decode(element['districts'].bodyBytes));
  //     }

  //     isLoading.value = false;
  //     update();
  //   } else {
  //     Get.snackbar('Error Loading data!',
  //         'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
  //   }
  // }
}
