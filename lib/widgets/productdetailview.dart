import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView(
      {Key? key,
      required this.productName,
      required this.productPrice,
      required this.productImg})
      : super(key: key);

  final String productName;
  final String productPrice;
  final String productImg;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              productImg,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            productName,
            style: GoogleFonts.varelaRound(
                textStyle: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w600)),
          ),
          Text(
            productPrice,
            style: GoogleFonts.varelaRound(
              textStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          )
        ]),
      ),
    ));
  }
}
