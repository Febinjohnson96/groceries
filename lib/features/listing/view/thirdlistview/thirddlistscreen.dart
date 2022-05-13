import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/features/listing/view/presenter/listviewpresenter.dart';
import 'package:groceries/features/listing/view/thirdlistview/thirddlistscreencontroller.dart';
import 'package:groceries/features/listing/widget/productlistingcard.dart';

class ThirdListScreen extends StatelessWidget {
  const ThirdListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThirdListController>(
        init: ThirdListController(),
        builder: (controller) {
          return Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: GridView.builder(
                  itemCount: controller.fruitsList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 5 / 7,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => ListingViewPresenter.productPresenter(
                          context: context,
                          productdetails: controller.fruitsList[index]),
                      child: ProductListingCardWidget(
                          imagePath:
                              controller.fruitsList[index].imagePath.toString(),
                          productName:
                              controller.fruitsList[index].name.toString(),
                          productPrice:
                              controller.fruitsList[index].price.toString()),
                    );
                  }),
            ),
          );
        });
  }
}
