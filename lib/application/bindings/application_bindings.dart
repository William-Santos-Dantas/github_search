import 'package:get/get.dart';

import '../rest_client/rest_client.dart';
class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestClient>(() => RestClient(), fenix: true);
  }
}
