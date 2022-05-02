import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/images/login.jpg",
          fit: BoxFit.cover,
          height: 200,
          width: double.infinity,
        ),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            gradient: LinearGradient(
                begin: FractionalOffset.centerRight,
                end: FractionalOffset.centerLeft,
                colors: [
                  Colors.green.withOpacity(0.5),
                  Colors.green.withOpacity(0.8),
                ],
                stops: const [
                  0.0,
                  1.0
                ])),
      ),
      Positioned.fill(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get up to  35% off",
                  style: GoogleFonts.varelaRound(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Avail huge discount on fresh groceries",
                  style: GoogleFonts.varelaRound(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
