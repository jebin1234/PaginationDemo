import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../post.dart';

class PaginationDemoController extends GetxController {
  final PagingController<int, Post> pagingController =
  PagingController(firstPageKey: 0);
  final numberOfPostsPerRequest = 5;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    pagingController.addPageRequestListener((pageKey) {
      fetchPage(pageKey);
    });
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final response = await get(Uri.parse(
          "https://jsonplaceholder.typicode.com/posts?_page=$pageKey&_limit=$numberOfPostsPerRequest"));
      List responseList = json.decode(response.body);
      List<Post> postList = responseList.map((data) =>
          Post(data['title'], data['body'])).toList();
      final isLastPage = postList.length < numberOfPostsPerRequest;
      if (isLastPage) {
        pagingController.appendLastPage(postList);
      } else {
        final nextPageKey = pageKey + 1;
        pagingController.appendPage(postList, nextPageKey);
      }
    } catch (e) {
      print("error --> $e");
      pagingController.error = e;
    }
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }

}
