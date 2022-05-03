import 'package:get/get.dart';
import 'package:groceries/models/productmodel.dart';

class ThirdListController extends GetxController {
  List<ProductModel> get fruitsList => [
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1611080626919-7cf5a9dbab5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
            name: "Orange",
            price: "₹ 50/Kg"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1629084092232-b7b3fa74cd4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
          name: "WaterMelon",
          price: "₹ 25/Kg",
        ),
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1501746877-14782df58970?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
            name: "Mango",
            price: "₹ 60/Kg"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1607532668400-f162fce11d06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
          name: "Dragon Fruit",
          price: "₹ 70/Kg",
        ),
        ProductModel(
            imagePath:
                "https://images.unsplash.com/photo-1578829779691-99b60bd8c7be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1067&q=80",
            name: "Grape",
            price: "₹ 40/Kg"),
        ProductModel(
          imagePath:
              "https://images.unsplash.com/photo-1541344999736-83eca272f6fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
          name: "Pomegrenade",
          price: "₹ 90/Kg",
        ),
      ];
}
