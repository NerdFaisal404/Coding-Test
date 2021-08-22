import 'package:cached_network_image/cached_network_image.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/utils/colors.dart';
import 'package:coding_test/utils/common_style.dart';
import 'package:coding_test/utils/common_text_util.dart';
import 'package:flutter/material.dart';

class TrendingProducts extends StatelessWidget {
  final TrendingProductsResponse? trendingProducts;
  TrendingProducts({this.trendingProducts});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.white70, width: 1),
      borderRadius: BorderRadius.circular(8),
    ),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 4, bottom: 6, left: 4,),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(trendingProducts?.productImage ?? "",),
                      fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))
                  ),
                ),
                Container(
                  color: white,
                  width: 130,
                  padding: EdgeInsets.only(top: 4),
                  child: Text(trendingProducts?.productName ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: commonLatoTextStyle(
                        color: black,
                        fontWeight: FontWeight.w600,
                        size: 12
                    ),),
                ),

                Container(
                  color: kWhiteColor,
                  padding: EdgeInsets.only(top: 4),
                  child: CommonTextUtil(
                    text: "price: BDT ${trendingProducts?.unitPrice}",
                    fontWeight: FontWeight.w300,
                    fontSize: 10,
                    color: black,
                    isCentre: true,
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}