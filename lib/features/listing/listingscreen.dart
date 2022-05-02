import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/constants/themecolors.dart';
import 'package:groceries/features/listing/listingcontroller.dart';
import 'package:groceries/features/listing/view/mainview/listingmainview.dart';
import 'package:groceries/features/listing/widget/offerwidget.dart';
import 'package:groceries/widgets/formfield.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListingController>(
        init: ListingController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Align(
                alignment: Alignment.center,
                child: Text(
                  "TEST TITLE",
                  textAlign: TextAlign.center,
                ),
              ),
              elevation: 0,
              automaticallyImplyLeading: false,
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GestureDetector(
                    onTap: (() => debugPrint("PRofile")),
                    child: Badge(
                      badgeColor: primaryColor,
                      badgeContent: Text(
                        "3",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.white),
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/portrait.jpg")),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi, Adam",
                        style: GoogleFonts.varelaRound(
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline3
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                        )),
                    Text(
                      "Fullfill your fresh grocery needs",
                      style: GoogleFonts.varelaRound(
                          textStyle:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: AppFormField(
                            controller: controller.searchController,
                            hintText: "Search Groceries",
                            suffixIcon: FontAwesomeIcons.magnifyingGlass,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 1,
                            child: IconButton(
                                onPressed: () => debugPrint("Search Settings"),
                                icon: const FaIcon(
                                  FontAwesomeIcons.sliders,
                                  size: 30,
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const OfferWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: GoogleFonts.varelaRound(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View all",
                              style: GoogleFonts.varelaRound(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      )),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        child: const ListingtMainView())
                  ],
                ),
              ),
            )),
          );
        });
  }
}
