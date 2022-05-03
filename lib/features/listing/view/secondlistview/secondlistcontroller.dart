import 'package:get/get.dart';
import 'package:groceries/models/productmodel.dart';

class SecondListController extends GetxController {
  List<ProductModel> get meatsList => [
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            name: "Pork",
            price: "₹ 250/Kg"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1560781290-7dc94c0f8f4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
          name: "Beef",
          price: "₹ 300/Kg",
        ),
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1568727349458-1bb59fb3fb63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            name: "Mackerel",
            price: "₹ 100/Kg"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1607205829692-44382aa7c391?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80",
          name: "Salmon",
          price: "₹ 200/Kg",
        ),
      ];
}
