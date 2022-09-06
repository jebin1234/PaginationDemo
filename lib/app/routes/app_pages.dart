import 'package:get/get.dart';

import '../modules/Pagination/bindings/pagination_binding.dart';
import '../modules/Pagination/views/pagination_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/paginationDemo/bindings/pagination_demo_binding.dart';
import '../modules/paginationDemo/views/pagination_demo_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PAGINATION_DEMO;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PAGINATION,
      page: () => PaginationView(),
      binding: PaginationBinding(),
    ),
    GetPage(
      name: _Paths.PAGINATION_DEMO,
      page: () => PaginationDemoView(),
      binding: PaginationDemoBinding(),
    ),
  ];
}
