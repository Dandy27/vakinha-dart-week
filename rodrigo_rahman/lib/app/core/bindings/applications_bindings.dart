import 'package:get/get.dart';
import 'package:rodrigo_rahman/app/core/rest_client/rest_client.dart';

class ApplicationsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RestClient(),
      fenix: true,
    );
  }
}
