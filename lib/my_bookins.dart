import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(automaticallyImplyLeading: false,centerTitle: true,
        title: Text("Bookings & Plans",style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w500),),)),
    );
  }
}