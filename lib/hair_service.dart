import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HairServiceScreen extends StatefulWidget {
  const HairServiceScreen({super.key});

  @override
  State<HairServiceScreen> createState() => _HairServiceScreenState();
}

class _HairServiceScreenState extends State<HairServiceScreen> {
  final CarouselController controller = CarouselController();
  List blowdry = [
    {
      "title": "Blowdry: Straight & Smooth",
      "review": "4.85 (14.4K reviews)",
      "amount": "₹399",
      "time": "30 mins",
      "content_1":
          "Simple blowdry to give you smooth\nand straight hair for a few hours.",
      "content_2":
          "For a frizz-free, longer lasting look,\nplease choose straightening",
      "view": "View details"
    },
    {
      "title": "Blowdry: Straight & Smooth",
      "review": "4.85 (14.4K reviews)",
      "amount": "₹399",
      "time": "30 mins",
      "content_1":
          "Simple blowdry to give you smooth\nand straight hair for a few hours.",
      "content_2":
          "For a frizz-free, longer lasting look,\nplease choose straightening",
      "view": "View details"
    },
    {
      "title": "Blowdry: Straight & Smooth",
      "review": "4.85 (14.4K reviews)",
      "amount": "₹399",
      "time": "30 mins",
      "content_1":
          "Simple blowdry to give you smooth\nand straight hair for a few hours.",
      "content_2":
          "For a frizz-free, longer lasting look,\nplease choose straightening",
      "view": "View details"
    },
    {
      "title": "Blowdry: Straight & Smooth",
      "review": "4.85 (14.4K reviews)",
      "amount": "₹399",
      "time": "30 mins",
      "content_1":
          "Simple blowdry to give you smooth\nand straight hair for a few hours.",
      "content_2":
          "For a frizz-free, longer lasting look,\nplease choose straightening",
      "view": "View details"
    },
    {
      "title": "Blowdry: Straight & Smooth",
      "review": "4.85 (14.4K reviews)",
      "amount": "₹399",
      "time": "30 mins",
      "content_1":
          "Simple blowdry to give you smooth\nand straight hair for a few hours.",
      "content_2":
          "For a frizz-free, longer lasting look,\nplease choose straightening",
      "view": "View details"
    }
  ];

  final List<String> imgList = [
    'https://i.pinimg.com/564x/66/49/de/6649ded3085b8e9af44702c23c5a8813.jpg',
    'https://i.pinimg.com/474x/4f/ef/35/4fef358eaeebc7f5aa2229fecf047c5d.jpg',
    'https://i.pinimg.com/474x/c5/5c/fd/c55cfd586ece3b2a5db39cab15b3b179.jpg',
  ];
  List services = [
    {
      "images":
          "https://i.pinimg.com/474x/e2/d9/69/e2d96995a46120e11983485b2d3e565a.jpg",
      "title": "Blowdry and Styling"
    },
    {
      "images":
          "https://i.pinimg.com/564x/1d/84/af/1d84af168a8376fca2039c2b214a6e26.jpg",
      "title": "Hair Care Spa"
    },
    {
      "images":
          "https://i.pinimg.com/474x/05/1c/0f/051c0f399232bd22fb8ff55a6dde5441.jpg",
      "title": "Cut & Style"
    },
    {
      "images":
          "https://i.pinimg.com/564x/ee/ee/67/eeee67cc05a5f7730408d6e871513bf9.jpg",
      "title": "Trim & Style"
    },
    {
      "images":
          "https://i.pinimg.com/564x/e6/9e/ca/e69ecaea420e2f38dff995e13a7bcc1e.jpg",
      "title": "Bestsellers"
    },
    {
      "images":
          "https://i.pinimg.com/474x/6b/67/ac/6b67ac23d8dd4dbdf6cbdbdaa8982194.jpg",
      "title": "Monthly Color"
    },
    {
      "images":
          "https://i.pinimg.com/564x/59/ba/eb/59baebd702c48188b4f38865adbc4ef9.jpg",
      "title": "Fashion Color"
    },
    {
      "images":
          "https://i.pinimg.com/474x/1c/59/f6/1c59f6a5fe69493b3afed143427e2858.jpg",
      "title": "Keratin & Hair Botox"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CarouselSlider(
                items: imgList
                    .map((item) => Center(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.network(
                                      item,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                carouselController: controller,
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {});
                  },
                  viewportFraction: 1.0,
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  aspectRatio: 1,
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hair Studio for Women",
                      style: GoogleFonts.roboto(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 34, 34, 34)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "4.82 (676K bookings)",
                          style: GoogleFonts.roboto(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 34, 34, 34)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 225, 225, 225),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            const Icon(Icons.favorite_outlined),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "UC Guide - Professionals and Hairstyles",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(255, 34, 34, 34)),
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
                thickness: 6, color: Color.fromARGB(255, 225, 225, 225)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: services.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 100 / 190,
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 190,
                      width: 100,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: 80,
                                width: 800,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            services[index]["images"]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          Text(
                            services[index]["title"],
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
            const Divider(
                thickness: 6, color: Color.fromARGB(255, 225, 225, 225)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 1650,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Blowdry and Styling",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 34, 34, 34)),
                        ),
                        Text(
                          "Styling Guide",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 96, 22, 215)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/564x/74/40/8e/74408e08e2271dc0fcfd7d0909404c7a.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding:const  EdgeInsets.only(top: 10),
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 260,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          blowdry[index]["title"],
                                          style: GoogleFonts.roboto(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromARGB(
                                                  255, 34, 34, 34)),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              blowdry[index]["review"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              blowdry[index]["amount"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 34, 34, 34),
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              blowdry[index]["time"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Center(
                                              child: Text(
                                                blowdry[index]["content_1"],
                                                style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromARGB(
                                                        255, 34, 34, 34)),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              blowdry[index]["content_2"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(blowdry[index]["view"],
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromARGB(
                                                    255, 96, 22, 215)))
                                      ],
                                    ),
                                    const Spacer(),
                                    SizedBox(
                                      height: 135,
                                      width: 100,
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 120,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://i.pinimg.com/474x/91/84/84/918484b31391f926a379b4cc48de5cfa.jpg"),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              217,
                                                              217,
                                                              217))),
                                              child: Center(
                                                child: Text("Add",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 96, 22, 215))),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: 5)
                  ],
                ),
              ),
            ),
            const Divider(
                thickness: 6, color: Color.fromARGB(255, 225, 225, 225)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 1650,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hair Care Spa",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 34, 34, 34)),
                        ),
                        Text(
                          "CHOOSE STYLING VARIANT",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 96, 22, 215)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/474x/ab/3f/47/ab3f47ab1dcabc92ed5819a55f9da3c8.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(top: 10),
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 260,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          blowdry[index]["title"],
                                          style: GoogleFonts.roboto(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromARGB(
                                                  255, 34, 34, 34)),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              blowdry[index]["review"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              blowdry[index]["amount"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 34, 34, 34),
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              blowdry[index]["time"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Center(
                                              child: Text(
                                                blowdry[index]["content_1"],
                                                style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromARGB(
                                                        255, 34, 34, 34)),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              blowdry[index]["content_2"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(blowdry[index]["view"],
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromARGB(
                                                    255, 96, 22, 215)))
                                      ],
                                    ),
                                    const Spacer(),
                                    SizedBox(
                                      height: 135,
                                      width: 100,
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 120,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://i.pinimg.com/564x/64/62/e8/6462e846f5210c0e70819477580a7d08.jpg"),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              217,
                                                              217,
                                                              217))),
                                              child: Center(
                                                child: Text("Add",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 96, 22, 215))),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: 5)
                  ],
                ),
              ),
            ),const Divider(
                thickness: 6, color: Color.fromARGB(255, 225, 225, 225)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 1650,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cut & Style",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 34, 34, 34)),
                        ),
                        Text(
                          "Hair Cut Guide",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 96, 22, 215)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/474x/2a/8b/9c/2a8b9c1417746583912dced759dd0679.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(top: 10),
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 260,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          blowdry[index]["title"],
                                          style: GoogleFonts.roboto(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: const Color.fromARGB(
                                                  255, 34, 34, 34)),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 15,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              blowdry[index]["review"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              blowdry[index]["amount"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 34, 34, 34),
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              blowdry[index]["time"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Center(
                                              child: Text(
                                                blowdry[index]["content_1"],
                                                style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromARGB(
                                                        255, 34, 34, 34)),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 6,
                                              width: 6,
                                              decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              blowdry[index]["content_2"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 34, 34, 34)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(blowdry[index]["view"],
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromARGB(
                                                    255, 96, 22, 215)))
                                      ],
                                    ),
                                    const Spacer(),
                                    SizedBox(
                                      height: 135,
                                      width: 100,
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 120,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://i.pinimg.com/474x/6e/ee/03/6eee032520e678499cde5c634b6e9ac8.jpg"),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              217,
                                                              217,
                                                              217))),
                                              child: Center(
                                                child: Text("Add",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 96, 22, 215))),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: 5)
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
