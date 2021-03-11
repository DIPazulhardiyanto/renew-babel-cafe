import 'package:bubblecafe/model/product/product.dart';
import 'dart:convert';
import '../repository/api_client/dio_client.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  DioClient dioClient;
  final String _endpoint = "http://192.168.20.232:8000/auth";

  ApiProvider(){
    var dio = Dio();
    dioClient = DioClient(_endpoint, dio);
  }

  Future<ProductResponse> GETproductList() async {
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

  Future<List<Row>> GetAllProduct() async {
    var response = await dioClient.get(
        "/product",
        queryParameters: {
          "page": 1,
          "size": 5,
          "names": "",
          "descending": true
        }
    );
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Row> row = ProductResponse.fromJson(data).data.rows;
      return row;
    } else {
      throw Exception();
    }

  }


}