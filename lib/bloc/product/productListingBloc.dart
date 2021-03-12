import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bubblecafe/bloc/product/productEvent.dart';
import 'package:bubblecafe/bloc/product/productState.dart';
import 'package:bubblecafe/model/product/product.dart';
import 'package:bubblecafe/repository/ApiRepository.dart';

class ProductListingBloc
    extends Bloc<ProductListingEvent, ProductsListingState> {
  ApiRepository apiRepository = ApiRepository();

  ProductListingBloc({ApiRepository apiRepository})
      : super(ProductsListingInitialzedState());

  @override
  Stream<ProductsListingState> mapEventToState(
      ProductListingEvent event) async* {
    yield FetchingProductListingState();
    List<ProductRow> row;
    try {
      ProductResponse productList = await apiRepository.GetProduct();
      if (row.length == 0) {
        yield ProductListingEmpatyState();
      } else {
        yield FetchedProductListingState(row: productList.data.rows);
      }
    } catch (e) {
      yield ProductListingErrorState();
    }
  }
}
