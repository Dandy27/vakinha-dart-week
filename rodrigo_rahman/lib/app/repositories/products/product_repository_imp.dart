import 'dart:developer';

import 'package:rodrigo_rahman/app/core/rest_client/rest_client.dart';
import 'package:rodrigo_rahman/app/models/product_model.dart';
import 'package:rodrigo_rahman/app/repositories/products/product_repository.dart';

class ProductRepositoryImp implements ProductRepository {
  final RestClient _restClient;

  ProductRepositoryImp({
    required RestClient restClient,
  }) : _restClient = restClient;

  @override
  Future<List<ProductModel>> findAll() async {
    final result = await _restClient.get('/products/');
    if (result.hasError) {
      log(
        'Error ao buscar produtos ${result.statusCode}',
        error: result.statusText,
        stackTrace: StackTrace.current,
      );
      throw RestClientException('Erro ao buscar produtos');
    }
    return result.body
        .map<ProductModel>((p) => ProductModel.fromMap(p))
        .toList();
  }
}
