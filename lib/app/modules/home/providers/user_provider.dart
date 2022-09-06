import 'package:get/get.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
   // httpClient.baseUrl = 'https://fakestoreapi.com/users';
  }
  Future getPosts()async{
    var response = await get("https://jsonplaceholder.typicode.com/albums");
    return response.body;
  }
}
