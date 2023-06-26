import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  List help = [
    {"icon": Icons.person, "title": "Account"},
    {"icon": Icons.people, "title": "Getting started with UC"},
    {"icon": Icons.payment, "title": "Payment & UC Credits"},
    {"icon": Icons.card_membership, "title": "UC Plus Membership"},
    {"icon": Icons.safety_check, "title": "UC Safety"},
    {"icon": Icons.health_and_safety, "title": "Warranty"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 223, 223),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Help",
          style: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 223, 223, 223),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "How can we help you?",
                      style: GoogleFonts.roboto(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ))),
        const  SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "All topics",
              style:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        const  SizedBox(
            height: 20,
          ),
          ListView.separated(
              physics:const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(help[index]["icon"]),
                  trailing:const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                  title: Text(
                    help[index]["title"],
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(),
                );
              },
              itemCount: 6),
        const  SizedBox(
            height: 30,
          ),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color:const Color.fromARGB(255, 234, 234, 234),
          ),
        const  SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "How are we doing?",
              style:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        const  SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Report a bug or suggest ways to make UC better",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
       const   SizedBox(
            height: 20,
          ),
          Center(
              child: Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("Give feedback",style:
                      GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),)),
                          ),
                ),
              ))
        ],
      ),
    );
  }
}
