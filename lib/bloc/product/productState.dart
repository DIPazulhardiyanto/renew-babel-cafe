import 'package:bubblecafe/model/product/product.dart';
import 'package:flutter/material.dart';

abstract class ProductsListingState {}

class ProductsListingInitialzedState extends ProductsListingState {}

class FetchingProductListingState extends ProductsListingState {}

class FetchedProductListingState extends ProductsListingState {
  final List<ProductRow> row;
  FetchedProductListingState({@required this.row});
}

class ProductListingErrorState extends ProductsListingState {}

class ProductListingEmpatyState extends ProductsListingState {}

