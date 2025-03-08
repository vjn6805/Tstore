import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';


class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //variables
  final pagecontroller = PageController();
  Rx<int> currentPageIndex = 0.obs;  //to get current page index

  //upadte page index on swipe
  void updatePageIndicator(index) => currentPageIndex.value = index;


  //jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pagecontroller.jumpTo(index);
  }

  //update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value==3) {
      //Get.to(LoginScreen());
    }
    else{
      int page=currentPageIndex.value+1;
      pagecontroller.jumpToPage(page);

    }
  }

  //update current page and jump to last page
  void skipPage(){
    currentPageIndex.value=2;
    pagecontroller.jumpToPage(2);
  }


}