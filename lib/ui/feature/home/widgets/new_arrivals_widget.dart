import 'package:cached_network_image/cached_network_image.dart';
import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/utils/colors.dart';
import 'package:coding_test/utils/common_style.dart';
import 'package:coding_test/utils/common_text_util.dart';
import 'package:coding_test/utils/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewArrivalsWidget extends StatelessWidget {
  final NewArrivalsProductsResponse? newArrivalsProduct;
  NewArrivalsWidget({this.newArrivalsProduct});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(dp8),
      ),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: dp4, bottom: dp6, left: dp4,),
            child: Column(
              children: [
                Container(
                  height: dp160,
                  width: dp130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(newArrivalsProduct?.productImage ?? "",),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(dp8),
                          topRight: Radius.circular(dp8))
                  ),
                ),
                Container(
                  color: white,
                  width: dp130,
                  padding: EdgeInsets.only(top: dp4),
                  child: Text(newArrivalsProduct?.productName ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: commonLatoTextStyle(
                        color: black,
                        fontWeight: FontWeight.w600,
                        size: dp12
                    ),),
                ),

                Container(
                  color: white,
                  padding: EdgeInsets.only(top: dp4),
                  child: CommonTextUtil(
                    text: "price: BDT ${newArrivalsProduct?.unitPrice}",
                    fontWeight: FontWeight.w300,
                    fontSize: dp10,
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