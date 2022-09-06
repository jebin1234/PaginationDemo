import 'package:get/get.dart';

import '../providers/user_provider.dart';

class HomeController extends GetxController {

  UserProvider userProvider =Get.find<UserProvider>();
  var posts=[].obs;
  var loading =false.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    loadpost();
  }
  loadpost() async{
    loading(true);
    posts(await userProvider.getPosts());
    loading(false);

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
