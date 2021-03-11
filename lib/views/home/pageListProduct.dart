import 'package:bubblecafe/bloc/product/productList.dart';
import 'package:bubblecafe/model/product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageListProduct extends StatefulWidget {
  @override
  _PageListProductState createState() => _PageListProductState();
}

class _PageListProductState extends State<PageListProduct> {
  final ProductListBloc _productListBloc = ProductListBloc();

  @override
  void initState() {
    _productListBloc.add(ProductListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider<ProductListBloc>(
        create: (context) => _productListBloc,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Product', style: TextStyle(color: Colors.amber[800])),
              WidgetRows(context),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      )),
    );
  }

  Widget WidgetRows(context) {
    return Card(
      child: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
        if (state is ProductListLoading) {
          return CircularProgressIndicator();
        } else if (state is ProductListFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        }
      }),
    );
  }

  Widget buildProductList(List<Data> state) {}

// Widget WidgetRows(context) {
//   return Card(
//     child: BlocBuilder<ProductListBloc, ProductListState>(
//       builder: (context, state) {
//         if (state is ProductListLoading){
//           return CircularProgressIndicator();
//         } else if (state is ProductListFailure) {
//           return Center(
//             child: Text(state.errorMessage),
//           );
//         } else if (state is ProductListLoaded){
//
//           );
//         }
//       },
//     ),
//   );
// }

}
