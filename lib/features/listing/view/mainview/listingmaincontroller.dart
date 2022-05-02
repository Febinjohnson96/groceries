import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListingMainController extends GetxController {
  List<Tab> get tabbars => [
        Tab(
          icon: Image.asset(
            "assets/images/vegetableicon.png",
          ),
        ),
        Tab(
          icon: Image.asset("assets/images/meaticon.png"),
        ),
        Tab(
          icon: Image.asset("assets/images/fruitsicon.png"),
        ),
        Tab(
          icon: Image.asset("assets/images/breadicon.png"),
        ),
      ];
}
