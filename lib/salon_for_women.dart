import 'package:flutter/material.dart';

class SalonForWomen extends StatefulWidget {
  const SalonForWomen({super.key});

  @override
  State<SalonForWomen> createState() => _SalonForWomenState();
}

class _SalonForWomenState extends State<SalonForWomen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Image.network(
              "https://i.pinimg.com/564x/51/58/97/5158977201bc73a6c237d3d9d153d924.jpg",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      
    );
  }
}
