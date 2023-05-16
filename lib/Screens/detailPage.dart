// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:hayak_app/Screens/HomePage.dart';

class detailPage extends StatelessWidget {
  const detailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff05357D),
      body: Stack(children: [
        SizedBox(
          height: 300,
          width: ScreenSize.width,
          child: Stack(children: [
            Carousel(
              dotBgColor: Colors.transparent,
              dotIncreaseSize: 0.7,
              dotSpacing: 15,
              autoplayDuration: const Duration(seconds: 5),
              images: [
                Image.asset('assets/images/riyadh.jpg', fit: BoxFit.cover),
                Image.asset('assets/images/download.jpeg', fit: BoxFit.cover),
                Image.asset('assets/images/Riyadh_Skyline.jpg',
                    fit: BoxFit.cover),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.favorite_outline,color: Colors.white,),
                    )
                  ],
                ))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Container(
            height: ScreenSize.height,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      const Text('Riyadh, Saudi Arabia'),
                      Expanded(child: Container()),
                      const Text(
                        'شهرياً /',
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'rb',
                            color: Color(0xff05357D)),
                      ),
                      const Text(
                        'ريال',
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'rb',
                            color: Color(0xff05357D)),
                      ),
                      const Text(
                        '2,500',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'din',
                            color: Color(0xff05357D),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text(
                        'إيجار',
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'rb',
                            color: Color(0xffA1A1AA)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
