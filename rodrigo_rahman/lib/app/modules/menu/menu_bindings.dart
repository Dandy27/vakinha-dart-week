import 'package:get/get.dart';
import 'package:rodrigo_rahman/app/repositories/products/product_repository.dart';
import 'package:rodrigo_rahman/app/repositories/products/product_repository_imp.dart';
import './menu_controller.dart';

class MenuBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(
      () => ProductRepositoryImp(
        restClient: Get.find(),
      ),
    );
    Get.put(MenuController(productRepository: Get.find()));
  }
}
