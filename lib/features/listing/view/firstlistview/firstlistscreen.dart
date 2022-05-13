import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/features/listing/view/firstlistview/firstlistscreencontroller.dart';
import 'package:groceries/features/listing/view/presenter/listviewpresenter.dart';
import 'package:groceries/features/listing/widget/productlistingcard.dart';

class FirstListScreen extends StatelessWidget {
  const FirstListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirstListController>(
      init: FirstListController(),
      builder: (controller) {
        return Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: GridView.builder(
                itemCount: controller.vegetableList.length,
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
                        productdetails: controller.vegetableList[index]),
                    child: ProductListingCardWidget(
                      imagePath:
                          controller.vegetableList[index].imagePath.toString(),
                      productName:
                          controller.vegetableList[index].name.toString(),
                      productPrice:
                          controller.vegetableList[index].price.toString(),
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}
