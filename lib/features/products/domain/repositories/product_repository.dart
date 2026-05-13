import 'package:riverpod_base_demo/features/products/domain/models/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();

  Future<Product> getProduct(int id);
}
