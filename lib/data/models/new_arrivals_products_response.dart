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
    this.ezShopName,
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
  SellerName? sellerName;
  String? sellerProfilePhoto;
  String? sellerCoverPhoto;
  EzShopName? ezShopName;
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
    sellerName: sellerNameValues.map![json["sellerName"]],
    sellerProfilePhoto: json["sellerProfilePhoto"],
    sellerCoverPhoto: json["sellerCoverPhoto"],
    ezShopName: ezShopNameValues.map![json["ezShopName"]],
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
    "sellerName": sellerNameValues.reverse[sellerName],
    "sellerProfilePhoto": sellerProfilePhoto,
    "sellerCoverPhoto": sellerCoverPhoto,
    "ezShopName": ezShopNameValues.reverse[ezShopName],
    "defaultPushScore": defaultPushScore,
    "myProductVarId": myProductVarId,
  };
}

enum EzShopName { PHOENIX_MART, GORGEOUSAND_BEAUTIFUL, DURONTOKIDS, AUVRAFASHION }

final ezShopNameValues = EnumValues({
  "auvrafashion": EzShopName.AUVRAFASHION,
  "durontokids": EzShopName.DURONTOKIDS,
  "GorgeousandBeautiful": EzShopName.GORGEOUSAND_BEAUTIFUL,
  "PhoenixMart": EzShopName.PHOENIX_MART
});

enum SellerName { PHOENIX_MART, GORGEOUS_BEAUTIFUL, DURONTO_KIDS, AUVRA_FASHION }

final sellerNameValues = EnumValues({
  "Auvra Fashion": SellerName.AUVRA_FASHION,
  "Duronto Kids": SellerName.DURONTO_KIDS,
  "Gorgeous&Beautiful": SellerName.GORGEOUS_BEAUTIFUL,
  "Phoenix Mart": SellerName.PHOENIX_MART
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map?.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
