// To parse this JSON data, do
//
//     final productResponse = productResponseFromJson(jsonString);

import 'dart:convert';

ProductResponse productResponseFromJson(String str) =>
    ProductResponse.fromJson(json.decode(str));

String productResponseToJson(ProductResponse data) =>
    json.encode(data.toJson());

class ProductResponse {
  ProductResponse({
    this.message,
    this.error,
    this.code,
    this.data,
  });

  String message;
  bool error;
  int code;
  Data data;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      ProductResponse(
        message: json["message"],
        error: json["error"],
        code: json["code"],
        data: Data.fromJson(json["data"]),
      );

  ProductResponse.withError(this.error);

  Map<String, dynamic> toJson() => {
    "message": message,
    "error": error,
    "code": code,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.totalItems,
    this.rows,
    this.totalPages,
    this.currentPage,
  });

  int totalItems;
  List<ProductRow> rows;
  int totalPages;
  int currentPage;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    totalItems: json["totalItems"],
    rows: List<ProductRow>.from(json["rows"].map((x) => ProductRow.fromJson(x))),
    totalPages: json["totalPages"],
    currentPage: json["currentPage"],
  );

  Map<String, dynamic> toJson() => {
    "totalItems": totalItems,
    "rows": List<dynamic>.from(rows.map((x) => x.toJson())),
    "totalPages": totalPages,
    "currentPage": currentPage,
  };
}

class ProductRow {
  ProductRow({
    this.id,
    this.nameProduct,
    this.descriptionsProduct,
    this.priceProduct,
    this.ratingProduct,
    this.stockProduct,
    this.statusProduct,
    this.addressImage,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String nameProduct;
  String descriptionsProduct;
  int priceProduct;
  int ratingProduct;
  String stockProduct;
  int statusProduct;
  String addressImage;
  String createdAt;
  String updatedAt;
  dynamic deletedAt;

  factory ProductRow.fromJson(Map<String, dynamic> json) => ProductRow(
    id: json["id"],
    nameProduct: json["nameProduct"],
    descriptionsProduct: json["descriptionsProduct"],
    priceProduct: json["priceProduct"],
    ratingProduct: json["ratingProduct"],
    stockProduct: json["stockProduct"],
    statusProduct: json["statusProduct"],
    addressImage: json["addressImage"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    deletedAt: json["deletedAt"],
  );



  Map<String, dynamic> toJson() => {
    "id": id,
    "nameProduct": nameProduct,
    "descriptionsProduct": descriptionsProduct,
    "priceProduct": priceProduct,
    "ratingProduct": ratingProduct,
    "stockProduct": stockProduct,
    "statusProduct": statusProduct,
    "addressImage": addressImage,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "deletedAt": deletedAt,
  };
}
