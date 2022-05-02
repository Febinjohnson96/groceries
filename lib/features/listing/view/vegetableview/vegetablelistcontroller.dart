import 'package:get/get.dart';
import 'package:groceries/models/productmodel.dart';

class VegetableListController extends GetxController {
  List<ProductModel> get vegetableList => [
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1611105637889-3afd7295bdbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
            name: "Cabbage",
            price: "₹ 20/Kg"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1606355601253-61a57fe375e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          name: "Carrot",
          price: "₹ 25/Kg",
        ),
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1620574387995-0160967f52f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
            name: "Shallot",
            price: "₹ 30/Kg"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1603048719539-9ecb4aa395e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1184&q=80",
          name: "Potato",
          price: "₹ 30/Kg",
        ),
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1561136594-7f68413baa99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            name: "Tomato",
            price: "₹ 40/Kg"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1558408525-1092038389ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          name: "Ladies Finger",
          price: "₹ 30/Kg",
        ),
      ];
}
