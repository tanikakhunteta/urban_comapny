import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_company/all_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:NetworkImage(
                        "https://i.pinimg.com/564x/1b/bc/19/1bbc1971abda4ec64fd1877125d7e9b3.jpg"),
                    fit: BoxFit.cover)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            const CountryCodePicker(
                              onChanged: print,
                            
                              initialSelection: 'IN',
                              favorite: ['+91', 'FR'],
                           
                              showCountryOnly: false,
                         
                              showOnlyCountryWhenClosed: false,
                         
                              alignLeft: false,
                            ),
                            const VerticalDivider(),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 16),
                                    hintText: "Your phone number",
                                    hintStyle: GoogleFonts.roboto(
                                        color: Colors.grey, fontSize: 17)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                            "Continue",
                            style: GoogleFonts.roboto(
                                fontSize: 17, color: Colors.white),
                          ))),
                    ),
                  ],
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25, bottom: 25),
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AllScreen(),
                                ));
                          },
                          child: Text(
                            "Skip",
                            style: GoogleFonts.roboto(
                                fontSize: 15, color: Colors.white),
                          ),
                        )),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
