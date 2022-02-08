import 'package:get/get.dart';
import 'package:rodrigo_rahman/app/models/product_model.dart';

class ProductDetailController extends GetxController {
  final _product = Rx<ProductModel>(Get.arguments);

  final _totalPrice = 0.0.obs;
  final _quatity = 1.obs;

  ProductModel get product => _product.value;
  double get totalPrice => _totalPrice.value;
  int get quantity => _quatity.value;

  @override
  void onInit() {
    super.onInit();
    _totalPrice(product.price);

    ever<int>(_quatity, (quantity) {
      _totalPrice(product.price * quantity);
    });
  }

  void addProduct() {
    _quatity.value += 1;
  }

  void removeProduct() {
    if (_quatity > 1) {
      _quatity.value -= 1;
    }
  }
}
