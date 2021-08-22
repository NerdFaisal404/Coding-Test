import 'dart:convert';

List<List<TrendingProductsResponse>> trendingProductsResponseFromJson(String str) => List<List<TrendingProductsResponse>>.from(json.decode(str).map((x) => List<TrendingProductsResponse>.from(x.map((x) => TrendingProductsResponse.fromJson(x)))));

String trendingProductsResponseToJson(List<List<TrendingProductsResponse>> data) => json.encode(List<dynamic>.from(data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class TrendingProductsResponse {
  TrendingProductsResponse({
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

  factory TrendingProductsResponse.fromJson(Map<String, dynamic> json) => TrendingProductsResponse(
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


