import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/features/listing/view/secondlistview/secondlistcontroller.dart';
import 'package:groceries/features/listing/widget/productlistingcard.dart';

class SecondListScreen extends StatelessWidget {
  const SecondListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecondListController>(
        init: SecondListController(),
        builder: (controller) {
          return Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: GridView.builder(
                  itemCount: controller.meatsList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 5 / 7,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) {
                    return ProductListingCardWiget(
                        imagePath:
                            controller.meatsList[index].imagePath.toString(),
                        productName:
                            controller.meatsList[index].name.toString(),
                        productPrice:
                            controller.meatsList[index].price.toString());
                  }),
            ),
          );
        });
  }
}
