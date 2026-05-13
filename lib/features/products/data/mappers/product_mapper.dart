import 'package:riverpod_base_demo/features/products/data/models/product_response.dart';
import 'package:riverpod_base_demo/features/products/domain/models/product.dart';

class ProductMapper {
  static Product toEntity(ProductResponse response) {
    return Product(
      id: response.id ?? -1,
      title: response.title ?? "",
      price: response.price ?? 0.0,
      description: response.description ?? "",
      category: response.category ?? "",
      image: response.image ?? "",
    );
  }

  static List<Product> toEntities(List<ProductResponse> responses) {
    if (responses.isEmpty) return [];
    return responses.map((response) => toEntity(response)).toList();
  }
}
