import 'package:get/get.dart';
import 'package:rodrigo_rahman/app/models/product_model.dart';
import 'package:rodrigo_rahman/app/models/shopping_card_model.dart';

class ShoppingCardService extends GetxService {
  final _shoppingCard = <int, ShoppingCardModel>{}.obs;

  List<ShoppingCardModel> get products => _shoppingCard.values.toList();

  int get totalPructs => _shoppingCard.values.length;

  ShoppingCardModel? getById(int id) => _shoppingCard[id];

  void addAndRemoveProductInShoppingCard(ProductModel product,
      {required int quantity}) {
    if (quantity == 0) {
      _shoppingCard.remove(product.id);
    } else {
      _shoppingCard.update(product.id, (product) {
        product.quantity = quantity;
        return product;
      }, ifAbsent: () {
        return ShoppingCardModel(quantity: quantity, product: product);
      });
    }
  }
}
