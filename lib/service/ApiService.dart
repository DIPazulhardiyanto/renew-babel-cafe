import 'package:bubblecafe/model/product/product.dart';
import 'dart:convert';
import '../service/api_client/dio_client.dart';
import 'package:dio/dio.dart';

class ApiService {
  DioClient dioClient;
  final String _endpoint = "http://192.168.20.232:8000/auth"; //Kantor
  // final String _endpoint = "http://192.168.100.5:8000/auth";//Home

  ApiService(){
    var dio = Dio();
    dioClient = DioClient(_endpoint, dio);
  }

  Future<ProductResponse> GetProductList() async {
    try {
      final response = await dioClient.get(
          "/product",
          queryParameters: {
            "page": 1,
            "size": 5,
            "names": "",
            "descending": true
          }
      );
      return ProductResponse.fromJson(response);
    } catch (e) {
      return ProductResponse.withError(e);
    }
  }


}