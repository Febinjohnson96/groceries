import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingFirstView extends StatelessWidget {
  const OnboardingFirstView(
      {Key? key,
      required this.assetPath,
      required this.title,
      required this.description})
      : super(key: key);
  final String assetPath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(assetPath,
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: GoogleFonts.varelaRound(
                textStyle: Theme.of(context).textTheme.headline3?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              description,
              style: GoogleFonts.varelaRound(
                textStyle: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.black),
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
