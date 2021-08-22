import 'package:cached_network_image/cached_network_image.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/utils/colors.dart';
import 'package:coding_test/utils/common_style.dart';
import 'package:coding_test/utils/common_text_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemProductWidget extends StatelessWidget {
  final StoriesResponse? productsModel;
  ItemProductWidget({this.productsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4,),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0.0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    margin: EdgeInsets.only(top: 16, left: 8),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: const Color(0x33A6A6A6)),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(productsModel?.companyLogo ?? "",),
                        fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            productsModel?.companyName ?? "",
                            style: commonLatoTextStyle(
                                color: black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          child: Text(
                            productsModel?.friendlyTimeDiff ?? "",
                            style: commonLatoTextStyle(
                                color: black_5,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.only( left: 40,),
              child: CommonTextUtil(
                text: productsModel?.story ?? "",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: black,
                isCentre: false,
              ),
            ),
            SizedBox(height: 8,),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric( vertical: 4, horizontal: 4),
              child: CachedNetworkImage(
                imageUrl: productsModel?.storyImage ?? "",
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),

            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: black,
                        size: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                       child: Text("BDT ${productsModel?.unitPrice}",
                       style: commonLatoTextStyle(
                         fontWeight: FontWeight.w700,
                         size: 12
                       ),)
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.event_available,
                        color: black,
                        size: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                       child: Text("${productsModel?.availableStock} Available Stock",
                       style: commonLatoTextStyle(
                         fontWeight: FontWeight.w700,
                         size: 12
                       ),)
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: black,
                        size: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                       child: Text("${productsModel?.orderQty} Order(s)",
                       style: commonLatoTextStyle(
                         fontWeight: FontWeight.w700,
                         size: 12
                       ),)
                      )
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
