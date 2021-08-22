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

  DateTime? storyTime;
  String? story;
  StoryType? storyType;
  String? storyImage;
  String? storyAdditionalImages;
  String? promoImage;
  int? orderQty;
  DateTime? lastAddToCart;
  int? availableStock;
  MyId? myId;
  EzShopName? ezShopName;
  Name? companyName;
  String? companyLogo;
  CompanyEmail? companyEmail;
  CurrencyCode? currencyCode;
  int? unitPrice;
  int? discountAmount;
  int? discountPercent;
  MyId? iMyId;
  Name? shopName;
  String? shopLogo;
  String? shopLink;
  String? friendlyTimeDiff;
  String? slNo;

  factory StoriesResponse.fromJson(Map<String, dynamic> json) => StoriesResponse(
    storyTime: DateTime.parse(json["storyTime"]),
    story: json["story"],
    storyType: storyTypeValues.map![json["storyType"]],
    storyImage: json["storyImage"],
    storyAdditionalImages: json["storyAdditionalImages"],
    promoImage: json["promoImage"],
    orderQty: json["orderQty"],
    lastAddToCart: DateTime.parse(json["lastAddToCart"]),
    availableStock: json["availableStock"],
    myId: myIdValues.map![json["myId"]],
    ezShopName: ezShopNameValues.map![json["ezShopName"]],
    companyName: nameValues.map![json["companyName"]],
    companyLogo: json["companyLogo"],
    companyEmail: companyEmailValues.map![json["companyEmail"]],
    currencyCode: currencyCodeValues.map![json["currencyCode"]],
    unitPrice: json["unitPrice"],
    discountAmount: json["discountAmount"],
    discountPercent: json["discountPercent"],
    iMyId: myIdValues.map![json["iMyID"]],
    shopName: nameValues.map![json["shopName"]],
    shopLogo: json["shopLogo"],
    shopLink: json["shopLink"],
    friendlyTimeDiff: json["friendlyTimeDiff"],
    slNo: json["slNo"],
  );

  Map<String, dynamic> toJson() => {
    "storyTime": storyTime?.toIso8601String(),
    "story": story,
    "storyType": storyTypeValues.reverse[storyType],
    "storyImage": storyImage,
    "storyAdditionalImages": storyAdditionalImages,
    "promoImage": promoImage,
    "orderQty": orderQty,
    "lastAddToCart": lastAddToCart?.toIso8601String(),
    "availableStock": availableStock,
    "myId": myIdValues.reverse[myId],
    "ezShopName": ezShopNameValues.reverse[ezShopName],
    "companyName": nameValues.reverse[companyName],
    "companyLogo": companyLogo,
    "companyEmail": companyEmailValues.reverse[companyEmail],
    "currencyCode": currencyCodeValues.reverse[currencyCode],
    "unitPrice": unitPrice,
    "discountAmount": discountAmount,
    "discountPercent": discountPercent,
    "iMyID": myIdValues.reverse[iMyId],
    "shopName": nameValues.reverse[shopName],
    "shopLogo": shopLogo,
    "shopLink": shopLink,
    "friendlyTimeDiff": friendlyTimeDiff,
    "slNo": slNo,
  };
}

enum CompanyEmail { DRESSDESTINATIONDHAKA_GMAIL_COM, GORGEOUSBEAUTIFUL2017_GMAIL_COM, THE_07_ANIKA_KABIR_GMAIL_COM, ABIRREHMAN76_GMAIL_COM }

final companyEmailValues = EnumValues({
  "abirrehman76@gmail.com": CompanyEmail.ABIRREHMAN76_GMAIL_COM,
  "dressdestinationdhaka@gmail.com": CompanyEmail.DRESSDESTINATIONDHAKA_GMAIL_COM,
  "gorgeousbeautiful2017@gmail.com": CompanyEmail.GORGEOUSBEAUTIFUL2017_GMAIL_COM,
  "07anika.kabir@gmail.com": CompanyEmail.THE_07_ANIKA_KABIR_GMAIL_COM
});

enum Name { D3_DRESS_DESTINATION_DHAKA, GORGEOUS_BEAUTIFUL, FASHION_PUNCH, AUVRA_FASHION }

final nameValues = EnumValues({
  "Auvra Fashion": Name.AUVRA_FASHION,
  "D3: Dress Destination Dhaka": Name.D3_DRESS_DESTINATION_DHAKA,
  "Fashion Punch": Name.FASHION_PUNCH,
  "Gorgeous&Beautiful": Name.GORGEOUS_BEAUTIFUL
});

enum CurrencyCode { BDT }

final currencyCodeValues = EnumValues({
  "bdt": CurrencyCode.BDT
});

enum EzShopName { D3_DRESS_DESTINATION_DHAKA, GORGEOUSAND_BEAUTIFUL, FASHIONPUNCH, AUVRAFASHION }

final ezShopNameValues = EnumValues({
  "auvrafashion": EzShopName.AUVRAFASHION,
  "D3DressDestinationDhaka": EzShopName.D3_DRESS_DESTINATION_DHAKA,
  "fashionpunch": EzShopName.FASHIONPUNCH,
  "GorgeousandBeautiful": EzShopName.GORGEOUSAND_BEAUTIFUL
});

enum MyId { THE_1665851847075999, NAZMULHAQUE114_GMAIL_COM, THE_188072211760555, ABIRREHMAN76_GMAIL_COM }

final myIdValues = EnumValues({
  "abirrehman76@gmail.com": MyId.ABIRREHMAN76_GMAIL_COM,
  "Nazmulhaque114@gmail.com": MyId.NAZMULHAQUE114_GMAIL_COM,
  "1665851847075999": MyId.THE_1665851847075999,
  "188072211760555": MyId.THE_188072211760555
});

enum StoryType { REGULAR, NEW_ARRIVAL, DISCOUNT }

final storyTypeValues = EnumValues({
  "Discount": StoryType.DISCOUNT,
  "New Arrival": StoryType.NEW_ARRIVAL,
  "Regular": StoryType.REGULAR
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
