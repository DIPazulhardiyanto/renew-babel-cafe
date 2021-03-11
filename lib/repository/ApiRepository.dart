import 'package:bubblecafe/model/product/product.dart';
import 'package:bubblecafe/repository/ApiProvider.dart';

class ApiRepository {
  final ApiProvider _apiRepository = ApiProvider();
  Future<ProductResponse> GetProduct() => _apiRepository.GETproductList();
}

class RowProductRepository {
  final ApiProvider _apiRepository = ApiProvider();
  Future<List<Row>> GetAllProduct() => _apiRepository.GetAllProduct();
}

