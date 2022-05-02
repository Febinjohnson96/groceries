import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListingCardWiget extends StatelessWidget {
  const ProductListingCardWiget(
      {Key? key,
      required this.imagePath,
      required this.productName,
      required this.productPrice})
      : super(key: key);
  final String imagePath;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.grey, width: 2)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imagePath,
                    height: 130,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  productName,
                  style: GoogleFonts.varelaRound(
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(productPrice,
                    style: GoogleFonts.varelaRound(
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
