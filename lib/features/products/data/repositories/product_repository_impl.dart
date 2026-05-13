import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/features/products/data/mappers/product_mapper.dart';
import 'package:riverpod_base_demo/features/products/data/service/remote_product_service.dart';
import 'package:riverpod_base_demo/features/products/domain/models/product.dart';
import 'package:riverpod_base_demo/features/products/domain/repositories/product_repository.dart';

part 'product_repository_impl.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) => ProductRepositoryImpl(
  ref.read<RemoteProductService>(remoteProductServiceProvider),
);

class ProductRepositoryImpl implements ProductRepository {
  final RemoteProductService _remoteProductService;

  ProductRepositoryImpl(this._remoteProductService);

  @override
  Future<Product> getProduct(int id) async {
    final response = await _remoteProductService.getProduct(id);
    return ProductMapper.toEntity(response);
  }

  @override
  Future<List<Product>> getProducts() async {
    final response = await _remoteProductService.getProducts();
    return ProductMapper.toEntities(response);
  }
}
