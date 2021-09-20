import 'package:dio/dio.dart';
import 'package:intgest_legislativo/models/parliamentary.dart';

class ParliamentaryRepository {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: "https://camaramodelo.intgest.com.br/api",
    connectTimeout: 10000,
    receiveTimeout: 3000,
  ));

  Future<List<Parliamentary>> get() async {
    try {
      final response = await _dio.get("/parlamentares/v2");
      final list = (response.data as List).map((item) {
        return Parliamentary.fromMap(item);
      }).toList();

      return list;
    } catch (error) {
      print(error);

      return [];
    }
  }
}
