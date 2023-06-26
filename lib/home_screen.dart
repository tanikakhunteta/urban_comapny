import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_company/ac_repair.dart';
import 'package:urban_company/cleaning.dart';
import 'package:urban_company/electricians.dart';
import 'package:urban_company/hair_service.dart';
import 'package:urban_company/home_painting.dart';
import 'package:urban_company/men_therapies.dart';
import 'package:urban_company/plumbers.dart';
import 'package:urban_company/salon_for_men.dart';
import 'package:urban_company/salon_for_women.dart';
import 'package:urban_company/service_model.dart';

import 'package:urban_company/women_therapies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List names = [
    "About Us",
    "Uc Impact",
    "Terms & Conditions",
    "Privacy Policy",
    "Interest-Based Advertising",
    "Anti Discrimination Policy",
    "Partner Welfare Policy",
    "Information Security Policy Statement & Objective",
    "Blog",
    "Reviews",
    "Near Me",
    "Careers",
    "Contact Us",
    "Quick Links",
    "RO Water Purifier"
  ];
  List servicePage = [
    const SalonForWomen(),
    const HairServiceScreen(),
    const WomenTherapiesScreen(),
    const SalonMenScreen(),
    const MenTherapyScreen(),
    const AcRepairScreen(),
    const HomePaintingScreen(),
    const CleaningScreen(),
    const ElectriciansScreen(),
    const PlumberScreen()
  ];
  List homeRepairs = [
    {
      "images": "assets/images/75d63f817040b0c7a4365cad14aadedf.jpg",
      "title": "House Painters",
      "sub_title": "Up to 20% Off"
    },
    {
      "images": "assets/images/6a6ea97aecad4c7479b21ae87c85ed58.jpg",
      "title": "Plumbers",
      "sub_title": ""
    },
    {
      "images": "assets/images/dd11ad8fe2b40f88270db383475d3f10.jpg",
      "title": "Carpenters",
      "sub_title": ""
    },
    {
      "images": "assets/images/fa2714ae76c2d2b9bbb15d4c5fd9f7c3.jpg",
      "title": "Electricians",
      "sub_title": ""
    }
  ];
  List salonServices = [
    {
      "images": "assets/images/3bd5f51ab8b3d9d7b9f7d2443586f4f6.jpg",
      "title": "Salon Prime",
      "sub_title": "Up to 50% Off"
    },
    {
      "images": "assets/images/67a3c6dfe6326cc353585ec48f0b88b6.jpg",
      "title": "Salon Prime for Kids and Men",
      "sub_title": "Haircut at ₹199"
    },
    {
      "images": "assets/images/777e680cc753af61337cba0377bdcead.jpg",
      "title": "Spa for Women",
      "sub_title": "Free head massage"
    },
    {
      "images": "assets/images/bc1c767233dc1b95ea23f3fda0074372.jpg",
      "title": "Massages for Men",
      "sub_title": "Free Head Massages"
    }
  ];
  List services = [
    {
      "images":
          "assets/images/portrait-beautiful-blond-woman-with-long-hair-makeup-brushes-near-attractive-face.jpg",
      "title": "Salon for Women"
    },
    {
      "images": "assets/images/visit-hairdresser-before-important-day.jpg",
      "title": "Hair Service for Women"
    },
    {
      "images": "assets/images/person-conducting-reiki-therapy.jpg",
      "title": "Women's therapies"
    },
    {
      "images": "assets/images/stylish-man-sitting-barbershop.jpg",
      "title": "Salon for Men"
    },
    {
      "images": "assets/images/forehead-massage.jpg",
      "title": "Men's Therapies"
    },
    {
      "images": "assets/images/repairman-doing-air-conditioner-service.jpg",
      "title": "Ac/Appliance repair"
    },
    {
      "images":
          "assets/images/woman-repairer-with-painting-roller-isolated.jpg",
      "title": "Home Painting"
    },
    {
      "images": "assets/images/full-shot-man-disinfecting-building.jpg",
      "title": "Cleaning & Pest Control"
    },
    {
      "images":
          "assets/images/man-electrical-technician-working-switchboard-with-fuses-uses-tablet.jpg",
      "title": "Electricians"
    },
    {
      "images": "assets/images/male-female-workers-wearing-work-clothes.jpg",
      "title": "Plumbers & Carpenters"
    }
  ];
  List mainDetailsModel = [];
  List tempDetailsModel = [];
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    for (var element in services) {
      log(element.toString());
      ServiceModel tempdetailsModel = ServiceModel.fromJson(element);
      mainDetailsModel.add(tempdetailsModel);
    }
    tempDetailsModel = mainDetailsModel;
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              onChanged: (value) {
                tempDetailsModel = [];
                setState(() {
                  for (var element in mainDetailsModel) {
                    if (element.title!.toLowerCase().contains(value)) {
                      tempDetailsModel.add(element);
                    }
                  }
                });
                log(tempDetailsModel.length.toString());
              },
              controller: searchController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(15),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: "Search for services",
                  hintStyle:
                      GoogleFonts.roboto(fontSize: 17, color: Colors.grey),

                  // ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: tempDetailsModel.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 100 / 140,
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => servicePage[index],
                        ));
                  },
                  child: SizedBox(
                    height: 120,
                    width: 100,
                    child: Column(
                      children: [
                        Card(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              height: 100,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          tempDetailsModel[index].images),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        Text(
                          tempDetailsModel[index].title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              color: const Color.fromARGB(255, 48, 48, 48)),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          SizedBox(
            height: 310,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Salon And Spa Services",
                  style: GoogleFonts.roboto(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Top professionals | Premium experience",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            child: Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width - 15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          salonServices[index]["images"]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            salonServices[index]["title"],
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            salonServices[index]["sub_title"],
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                color: const Color.fromARGB(255, 48, 48, 48)),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          SizedBox(
            height: 310,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Home Repairs",
                  style: GoogleFonts.roboto(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Expert Painters and technicians",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            child: Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width - 15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          homeRepairs[index]["images"]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            homeRepairs[index]["title"],
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            homeRepairs[index]["sub_title"],
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                color: const Color.fromARGB(255, 48, 48, 48)),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 130,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/insurance.png",
                    height: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UrbanComapany\nInsurance Protection",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 48, 48, 48)),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text:
                              "Upto Rs. 10,000 insurance cover with\nevery service requests.",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 48, 48, 48)),
                        ),
                        TextSpan(
                          text: " Learn More",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: const Color.fromARGB(255, 105, 165, 200)),
                        )
                      ]))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 130,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Anti Discrimination Policy",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 48, 48, 48)),
                      ),
                      Text(
                        "Urban company treats its community\nequally with respect and without\njudgement or bias",
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 48, 48, 48)),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/images/insurance.png",
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 130,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/made-in-india.png",
                    height: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Proud partners with\nGovt. of India",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 48, 48, 48)),
                      ),
                      Text(
                        "Find professionals certified by\nGovt. of India under Skill India Mission",
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 48, 48, 48)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 650,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 234, 234, 234),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        names[index],
                        style: GoogleFonts.roboto(fontSize: 15),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/1664287128google-play-store-logo-png.png",
                        height: 40,
                      ),
                      Image.asset(
                        "assets/images/download-on-the-app-store-apple-logo-png-transparent.png",
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
