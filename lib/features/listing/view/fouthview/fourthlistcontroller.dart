import 'package:get/get.dart';
import 'package:groceries/models/productmodel.dart';

class FourthListController extends GetxController {
  List<ProductModel> get breadList => [
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
            name: "Gluten Free Wheat",
            price: "₹ 25/g"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1589661329742-713c46926e34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          name: "Croissant",
          price: "₹ 30/g",
        ),
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1589367920969-ab8e050bbb04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            name: "Bun",
            price: "₹ 10/g"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1598373182133-52452f7691ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
          name: "Corn Bread",
          price: "₹ 20/g",
        ),
      ];
}
