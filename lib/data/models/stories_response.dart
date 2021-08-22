import 'dart:convert';

List<List<StoriesResponse>> storiesResponseFromJson(String str) => List<List<StoriesResponse>>.from(json.decode(str).map((x) => List<StoriesResponse>.from(x.map((x) => StoriesResponse.fromJson(x)))));

String storiesResponseToJson(List<List<StoriesResponse>> data) => json.encode(List<dynamic>.from(data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class StoriesResponse {
  StoriesResponse({
    this.storyTime,
    this.story,
    this.storyType,
    this.storyImage,
    this.storyAdditionalImages,
    this.promoImage,
    this.orderQty,
    this.lastAddToCart,
    this.availableStock,
    this.myId,
    this.ezShopName,
    this.companyName,
    this.companyLogo,
    this.companyEmail,
    this.currencyCode,
    this.unitPrice,
    this.discountAmount,
    this.discountPercent,
    this.iMyId,
    this.shopName,
    this.shopLogo,
    this.shopLink,
    this.friendlyTimeDiff,
    this.slNo,
  });

  String? storyTime;
  String? story;
  String? storyType;
  String? storyImage;
  String? storyAdditionalImages;
  String? promoImage;
  int? orderQty;
  String? lastAddToCart;
  int? availableStock;
  String? myId;
  String? ezShopName;
  String? companyName;
  String? companyLogo;
  String? companyEmail;
  String? currencyCode;
  int? unitPrice;
  int? discountAmount;
  int? discountPercent;
  String? iMyId;
  String? shopName;
  String? shopLogo;
  String? shopLink;
  String? friendlyTimeDiff;
  String? slNo;

  factory StoriesResponse.fromJson(Map<String, dynamic> json) => StoriesResponse(
    storyTime: json["storyTime"],
    story: json["story"],
    storyType: json["storyType"],
    storyImage: json["storyImage"],
    storyAdditionalImages: json["storyAdditionalImages"],
    promoImage: json["promoImage"],
    orderQty: json["orderQty"],
    lastAddToCart: json["lastAddToCart"],
    availableStock: json["availableStock"],
    myId: json["myId"],
    ezShopName: json["ezShopName"],
    companyName: json["companyName"],
    companyLogo: json["companyLogo"],
    companyEmail: json["companyEmail"],
    currencyCode: json["currencyCode"],
    unitPrice: json["unitPrice"],
    discountAmount: json["discountAmount"],
    discountPercent: json["discountPercent"],
    iMyId: json["iMyID"],
    shopName: json["shopName"],
    shopLogo: json["shopLogo"],
    shopLink: json["shopLink"],
    friendlyTimeDiff: json["friendlyTimeDiff"],
    slNo: json["slNo"],
  );

  Map<String, dynamic> toJson() => {
    "storyTime": storyTime,
    "story": story,
    "storyType": storyType,
    "storyImage": storyImage,
    "storyAdditionalImages": storyAdditionalImages,
    "promoImage": promoImage,
    "orderQty": orderQty,
    "lastAddToCart": lastAddToCart,
    "availableStock": availableStock,
    "myId": myId,
    "ezShopName": ezShopName,
    "companyName": companyName,
    "companyLogo": companyLogo,
    "companyEmail": companyEmail,
    "currencyCode": currencyCode,
    "unitPrice": unitPrice,
    "discountAmount": discountAmount,
    "discountPercent": discountPercent,
    "iMyID": iMyId,
    "shopName": shopName,
    "shopLogo": shopLogo,
    "shopLink": shopLink,
    "friendlyTimeDiff": friendlyTimeDiff,
    "slNo": slNo,
  };
}

