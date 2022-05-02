import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/features/listing/view/vegetableview/vegetablelistcontroller.dart';
import 'package:groceries/features/listing/widget/productlistingcard.dart';

class VegetableListScreen extends StatelessWidget {
  const VegetableListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VegetableListController>(
      init: VegetableListController(),
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
                  return ProductListingCardWiget(
                    imagePath:
                        controller.vegetableList[index].imagePath.toString(),
                    productName:
                        controller.vegetableList[index].name.toString(),
                    productPrice:
                        controller.vegetableList[index].price.toString(),
                  );
                }),
          ),
        );
      },
    );
  }
}
