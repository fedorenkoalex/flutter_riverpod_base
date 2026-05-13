import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/providers/common_providers.dart';

part 'local_token_storage.g.dart';

@riverpod
LocalTokenStorage localTokenStorage(Ref ref) =>
    LocalTokenStorage(ref.read<FlutterSecureStorage>(secureStorageProvider));

class LocalTokenStorage {
  final FlutterSecureStorage storage;
  final _tokenKey = 'token';

  LocalTokenStorage(this.storage);

  Future<String?> getToken() async => await storage.read(key: _tokenKey);

  Future<void> saveToken(String token) async =>
      await storage.write(key: _tokenKey, value: token);

  Future<void> deleteToken() async => await storage.delete(key: _tokenKey);
}
