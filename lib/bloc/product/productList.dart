import 'dart:convert';

import 'package:bubblecafe/model/product/product.dart';
import 'package:bubblecafe/repository/ApiRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ProductListState {}

class ProductListInitial extends ProductListState {}

class ProductListLoading extends ProductListState {}

class ProductListFailure extends ProductListState {
  final String errorMessage;

  ProductListFailure(this.errorMessage);
}

class ProductListLoaded extends ProductListState {
  final ProductResponse productList;
  ProductListLoaded(this.productList);
}


class ProductListRow extends ProductListState {
  final Data data;
  ProductListRow(this.data);
}

class ProductListEvent {}

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final ApiRepository _apiRepository = ApiRepository();
  RowProductRepository _apiRowProduct = RowProductRepository();

  ProductListBloc() : super(ProductListInitial());

  @override
  ProductListState get initialState => ProductListInitial();

  @override
  Stream<ProductListState> mapEventToState(
      ProductListEvent event) async* {
    yield ProductListLoading();
    ProductResponse productList = await _apiRepository.GetProduct();
    if (productList.error != null){
      yield ProductListFailure(productList.message);
      return;
    }
    yield ProductListLoaded(productList);
    yield ProductListRow(productList.data);
   }


}
