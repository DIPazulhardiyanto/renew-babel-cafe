import 'package:bubblecafe/model/product/product.dart';
import '../service/ApiService.dart';

class ApiRepository {
  ApiService _apiRepository = ApiService();

  Future<ProductResponse> GetProduct() => _apiRepository.GetProductList();

}

