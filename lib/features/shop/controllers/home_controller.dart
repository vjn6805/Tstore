import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController{
  static HomeController get instance=>Get.find();

  final carouselCurrentIndex=0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value=index;
  }
}