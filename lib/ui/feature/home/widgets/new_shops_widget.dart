import 'package:cached_network_image/cached_network_image.dart';
import 'package:coding_test/data/models/new_shops_response.dart';
import 'package:coding_test/utils/colors.dart';
import 'package:coding_test/utils/common_style.dart';
import 'package:coding_test/utils/common_text_util.dart';
import 'package:coding_test/utils/dimens.dart';
import 'package:flutter/material.dart';

class NewShopsWidget extends StatelessWidget {
  final NewShopsResponse? newShopsData;
  NewShopsWidget({this.newShopsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4, bottom: 6, left: 4,),
      child: Stack(
        children: [
          Container(
            height: 190,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: CachedNetworkImageProvider(newShopsData?.sellerItemPhoto ?? ""),
                    fit: BoxFit.cover)
            ),
          ),
          Positioned(
            top: dp6,
            left: dp6,
            child: Container(
              height: dp35,
              width: dp35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(newShopsData?.sellerProfilePhoto ?? ""))
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(dp5),
              color: greyDark.withOpacity(0.3),
              child:
              Text(newShopsData?.sellerName ?? "",
              textAlign: TextAlign.center ,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w300,
                  fontSize: dp14,
              ))
              ,
            ),
          )
        ],
      ),
    );
  }
}
