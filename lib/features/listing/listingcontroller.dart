import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/models/offermodel.dart';

class ListingController extends GetxController {
  final searchController = TextEditingController();

  List<OfferModel> get offers => [
        OfferModel(
          imgUrl: "assets/images/vegetable.jpg",
          offerTitle: "Get up to  35% off",
          offerDescription: "Avail huge discount on fresh groceries",
        ),
        OfferModel(
          imgUrl: "assets/images/fruits.jpg",
          offerTitle: "Get up to  35% off",
          offerDescription: "Avail huge discount on fresh fruits",
        ),
      ];
}
