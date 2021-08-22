// To parse this JSON data, do
//
//     final newArrivalsProductsResponse = newArrivalsProductsResponseFromJson(jsonString);

import 'dart:convert';

List<List<NewArrivalsProductsResponse>> newArrivalsProductsResponseFromJson(String str) => List<List<NewArrivalsProductsResponse>>.from(json.decode(str).map((x) => List<NewArrivalsProductsResponse>.from(x.map((x) => NewArrivalsProductsResponse.fromJson(x)))));

String newArrivalsProductsResponseToJson(List<List<NewArrivalsProductsResponse>> data) => json.encode(List<dynamic>.from(data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class NewArrivalsProductsResponse {
  NewArrivalsProductsResponse({
    this.slNo,
    this.productName,
    this.shortDetails,
    this.productDescription,
    this.availableStock,
    this.orderQty,
    this.salesQty,
    this.orderAmount,
    this.salesAmount,
    this.discountPercent,
    this.discountAmount,
    this.unitPrice,
    this.productImage,
    this.sellerName,
    this.sellerProfilePhoto,
    this.sellerCoverPhoto,
    this.shopName,
    this.defaultPushScore,
    this.myProductVarId,
  });

  String? slNo;
  String? productName;
  String? shortDetails;
  String? productDescription;
  int? availableStock;
  int? orderQty;
  int? salesQty;
  int? orderAmount;
  int? salesAmount;
  int? discountPercent;
  int? discountAmount;
  int? unitPrice;
  String? productImage;
  String? sellerName;
  String? sellerProfilePhoto;
  String? sellerCoverPhoto;
  String? shopName;
  int? defaultPushScore;
  String? myProductVarId;

  factory NewArrivalsProductsResponse.fromJson(Map<String, dynamic> json) => NewArrivalsProductsResponse(
    slNo: json["slNo"],
    productName: json["productName"],
    shortDetails: json["shortDetails"],
    productDescription: json["productDescription"],
    availableStock: json["availableStock"],
    orderQty: json["orderQty"],
    salesQty: json["salesQty"],
    orderAmount: json["orderAmount"],
    salesAmount: json["salesAmount"],
    discountPercent: json["discountPercent"],
    discountAmount: json["discountAmount"],
    unitPrice: json["unitPrice"],
    productImage: json["productImage"],
    sellerName: json["sellerName"],
    sellerProfilePhoto: json["sellerProfilePhoto"],
    sellerCoverPhoto: json["sellerCoverPhoto"],
    shopName: json["ezShopName"],
    defaultPushScore: json["defaultPushScore"],
    myProductVarId: json["myProductVarId"],
  );

  Map<String, dynamic> toJson() => {
    "slNo": slNo,
    "productName": productName,
    "shortDetails": shortDetails,
    "productDescription": productDescription,
    "availableStock": availableStock,
    "orderQty": orderQty,
    "salesQty": salesQty,
    "orderAmount": orderAmount,
    "salesAmount": salesAmount,
    "discountPercent": discountPercent,
    "discountAmount": discountAmount,
    "unitPrice": unitPrice,
    "productImage": productImage,
    "sellerName": sellerName,
    "sellerProfilePhoto": sellerProfilePhoto,
    "sellerCoverPhoto": sellerCoverPhoto,
    "ezShopName": shopName,
    "defaultPushScore": defaultPushScore,
    "myProductVarId": myProductVarId,
  };
}

