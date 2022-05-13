import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:groceries/models/productmodel.dart';
import 'package:groceries/widgets/productdetailview.dart';

class ListingViewPresenter {
  static productPresenter(
      {required BuildContext context, required ProductModel productdetails}) {
    Get.bottomSheet(ProductDetailView(
      productImg: productdetails.imagePath.toString(),
      productName: productdetails.name.toString(),
      productPrice: productdetails.price.toString(),
    ));
  }
}
