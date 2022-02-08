import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:rodrigo_rahman/app/models/product_model.dart';

class ProductDetailController extends GetxController {
  final _product = Rx<ProductModel>(Get.arguments);

  final _totalPrice = 0.0.obs;
  final _quatity = 1.obs;

  ProductModel get product => _product.value;
  double get totalPrice => _totalPrice.value;
  int get quantity => _quatity.value;
=======
import 'package:rodrigo_rahman/app/core/services/shopping_card_service.dart';

import '../../models/product_model.dart';

class ProductDetailController extends GetxController {
  final _product = Rx<ProductModel>(Get.arguments);
  final _totalPrice = 0.0.obs;
  final _quantity = 1.obs;
  final ShoppingCardService _shoppingCardService;
  final _alreadyAdded = false.obs;

  ProductDetailController({required ShoppingCardService shoppingCardService})
      : _shoppingCardService = shoppingCardService;

  ProductModel get product => _product.value;
  double get totalPrice => _totalPrice.value;
  int get quantity => _quantity.value;
  bool get alreadyAdded => _alreadyAdded.value;
>>>>>>> 9a3f33f1877ca55a5ac745fd9c3f02b303e77d15

  @override
  void onInit() {
    super.onInit();
    _totalPrice(product.price);

<<<<<<< HEAD
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
=======
    ever<int>(_quantity, (quantity) {
      _totalPrice(product.price * quantity);
    });

    final productShoppingCard = _shoppingCardService.getById(product.id);

    if (productShoppingCard != null) {
      _quantity(productShoppingCard.quantity);
      _alreadyAdded(true);
    }
  }

  void addProduct() {
    _quantity.value += 1;
  }

  void removeProduct() {
    if (_quantity > 1) {
      _quantity.value -= 1;
    }
  }

  void addProductInShoppingCard() {
    _shoppingCardService.addAndRemoveProductShopopingCard(
      product,
      quantity: quantity,
    );
    Get.back();
  }
>>>>>>> 9a3f33f1877ca55a5ac745fd9c3f02b303e77d15
}
