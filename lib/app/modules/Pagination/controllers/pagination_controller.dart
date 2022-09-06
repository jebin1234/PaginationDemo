import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Model.dart';

class PaginationController extends GetxController {
  List<Model> list = [];
 ScrollController scrollController= ScrollController();
  int listLength = 20;



  @override
  void onInit() {
    generateList();
    addItems();
    super.onInit();
  }

  addItems() async {
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.position.pixels) {
        for (int i = 0; i < 2; i++) {
          listLength++;
          list.add(Model(name: (listLength).toString()));
          update();
        }
      }
    });
  }

  generateList() {
    list = List.generate(
        listLength, (index) => Model(name: (index + 1).toString()));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
