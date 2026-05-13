import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/providers/common_providers.dart';
import 'package:riverpod_base_demo/features/products/data/models/product_response.dart';

part 'remote_product_service.g.dart';

@riverpod
RemoteProductService remoteProductService(Ref ref) =>
    RemoteProductService(ref.read<Dio>(dioProvider));

class RemoteProductService {
  final Dio _dio;

  final String _productsPath = '/products';

  RemoteProductService(this._dio);

  Future<List<ProductResponse>> getProducts() async {
    final response = await _dio.get(_productsPath);
    return (response.data as List)
        .map((json) => ProductResponse.fromJson(json))
        .toList();
  }

  Future<ProductResponse> getProduct(int id) async {
    final response = await _dio.get('$_productsPath/$id');
    return ProductResponse.fromJson(response.data);
  }
}
