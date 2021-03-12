import 'package:equatable/equatable.dart';

abstract class ProductListingEvent extends Equatable{}

class FetchProductListEvent extends ProductListingEvent {
  @override
  List<Object> get props => null;
}