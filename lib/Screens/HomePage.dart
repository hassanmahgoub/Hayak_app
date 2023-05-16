// ignore_for_file: file_names, non_constant_identifier_names

import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'detailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff05357D),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            width: ScreenSize.width,
            height: ScreenSize.height,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Colors.white,
                gradient: RadialGradient(
                    radius: 0.4,
                    center: Alignment.center,
                    colors: [
                      Color(0xff3D9FD7),
                      Colors.white,
                    ])),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.notifications_outlined),
                        Icon(Icons.menu)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'عقارات',
                    style: TextStyle(
                        fontFamily: 'rb', fontSize: 18, color: Color(0xff05357D)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 89,
                      width: ScreenSize.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 229, 227, 227),
                                blurRadius: 6,
                                offset: Offset.fromDirection(4,-4))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              size: 15,
                            ),
                            Expanded(child: Container()),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  'أكمل ملفك',
                                  style:
                                      TextStyle(fontFamily: 'rb', fontSize: 13),
                                ),
                                const Text(
                                  'الرجاء إكمال ملفك لبدء الاستثمار في العقارات الآن',
                                  style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 10,
                                      color: Color(0xffA1A1AA)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 20,
                                ),
                                LinearPercentIndicator(
                                  alignment: MainAxisAlignment.start,
                                  barRadius: const Radius.circular(9),
                                  width: 150,
                                  lineHeight: 6,
                                  percent: 0.4,
                                  progressColor: const Color(0xffEEEEEE),
                                  backgroundColor: const Color(0xff05357D),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const CircleAvatar(
                              backgroundColor: Color(0xffFACC2E),
                              radius: 25,
                              child: Icon(
                                Icons.warning_amber_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color(0xff3D9FD7)),
                          child: const Center(
                              child: Text(
                            'مباع',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'rb',
                                fontSize: 14),
                          )),
                        )),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color(0xff05357D)),
                          child: const Center(
                              child: Text(
                            'متوفر',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'rb',
                                fontSize: 14),
                          )),
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 426,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          boxShadow:  [
                            BoxShadow(color: const Color.fromARGB(255, 229, 227, 227),
                            offset: Offset.fromDirection(4,-4),
                             blurRadius: 6)
                          ]),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(9),
                                topRight: Radius.circular(9)),
                            child: InkWell(
                              child: Container(
                                height: 225,
                                width: ScreenSize.width,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Stack(children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const detailPage()));
                                    },
                                    child: Carousel(
                                      dotBgColor: Colors.transparent,
                                      dotIncreaseSize: 0.7,
                                      dotSpacing: 15,
                                      autoplayDuration: const Duration(seconds: 5),
                                      images: [
                                        Image.asset('assets/images/riyadh.jpg', fit: BoxFit.cover),
                                        Image.asset('assets/images/download.jpeg', fit: BoxFit.cover),
                                        Image.asset('assets/images/Riyadh_Skyline.jpg', fit: BoxFit.cover),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 170,left: 15,right: 15),
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xffC60712),
                                            size: 20,
                                          ),
                                        ),
                                        Expanded(child: Container()),
                                        Container(
                                          width: 75,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(25)),
                                            child: const Center(child: Text('مؤجّرة',style: TextStyle(fontFamily: 'rb',fontSize: 11),)),
                                        ),
                                        const SizedBox(width: 5,),
                                        Container(
                                          width: 75,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(25)),
                                            child: const Center(child: Text('الرياض',style: TextStyle(fontFamily: 'rb',fontSize: 11),)),
                                            )
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const detailPage()));
                              },
                            ),
                          ),
                          const SizedBox(height: 10,),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'شقة استديو، مطله علي شارع الملك فهد',
                                  style:
                                      TextStyle(fontFamily: 'rb', fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'مباع',
                                  style:
                                      TextStyle(fontFamily: 'rb', fontSize: 13),
                                ),
                                const Text(
                                  '19%',
                                  style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: LinearPercentIndicator(
                                    alignment: MainAxisAlignment.start,
                                    barRadius: const Radius.circular(9),
                                    width: 138,
                                    lineHeight: 6,
                                    percent: 0.8,
                                    progressColor: const Color(0xffEEEEEE),
                                    backgroundColor: const Color(0xff05357D),
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Text(
                                  'ريال',
                                  style: TextStyle(
                                      color: Color(0xff05357D),
                                      fontFamily: 'rb',
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    '430,466',
                                    style: TextStyle(
                                        color: Color(0xff05357D),
                                        fontFamily: 'din',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: ScreenSize.width,
                              height: 74,
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F4F5),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            '40',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'din',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'أيام متبقية',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: 'rb',
                                                color: Color(0xffA1A1AA)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '7.9%',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'din',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'أيام متبقية',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: 'rb',
                                                color: Color(0xffA1A1AA)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '49%',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'din',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'أيام متبقية',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: 'rb',
                                                color: Color(0xffA1A1AA)),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'شهرياً',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'rb',
                                      color: Color(0xff05357D)),
                                ),
                                const SizedBox(width: 3,),
                                const Text(
                                  'توزيع الدخل',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'rb',
                                      color: Color(0xffA1A1AA)),
                                ),
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
                                const SizedBox(width: 3,),
                                const Text(
                                  'إيجار',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'rb',
                                      color: Color(0xffA1A1AA)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 426,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          boxShadow:  [
                            BoxShadow(color: const Color.fromARGB(255, 229, 227, 227),
                            offset: Offset.fromDirection(4,-4),
                             blurRadius: 6)
                          ]),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(9),
                                topRight: Radius.circular(9)),
                            child: Container(
                              height: 225,
                              width: ScreenSize.width,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Stack(children: [
                                Carousel(
                                  dotBgColor: Colors.transparent,
                                  dotIncreaseSize: 0.7,
                                  dotSpacing: 15,
                                  autoplayDuration: const Duration(seconds: 5),
                                  images: [
                                    Image.asset('assets/images/interor.jpeg', fit: BoxFit.cover),
                                    Image.asset('assets/images/interor 1.jpeg', fit: BoxFit.cover),
                                    Image.asset('assets/images/interor 3.jpeg', fit: BoxFit.cover),
                                    // Image.asset('assets/images/download1.jpeg', fit: BoxFit.cover),
                                    // Image.asset('assets/images/download2.jpeg', fit: BoxFit.cover),
                                    // Image.asset('assets/images/download3.jpeg', fit: BoxFit.cover),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 170,left: 15,right: 15),
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.favorite_outline,
                                          color: Color(0xffC60712),
                                          size: 20,
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Container(
                                        width: 75,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(25)),
                                          child: const Center(child: Text('مؤجّرة',style: TextStyle(fontFamily: 'rb',fontSize: 11),)),
                                      ),
                                      const SizedBox(width: 5,),
                                      Container(
                                        width: 75,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(25)),
                                          child: const Center(child: Text('الرياض',style: TextStyle(fontFamily: 'rb',fontSize: 11),)),
                                          )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'شقة استديو، مطله علي شارع الملك فهد',
                                  style:
                                      TextStyle(fontFamily: 'rb', fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'مباع',
                                  style:
                                      TextStyle(fontFamily: 'rb', fontSize: 13),
                                ),
                                const Text(
                                  '19%',
                                  style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: LinearPercentIndicator(
                                    alignment: MainAxisAlignment.start,
                                    barRadius: const Radius.circular(9),
                                    width: 138,
                                    lineHeight: 6,
                                    percent: 0.8,
                                    progressColor: const Color(0xffEEEEEE),
                                    backgroundColor: const Color(0xff05357D),
                                  ),
                                ),
                                Expanded(child: Container()),
                                const Text(
                                  'ريال',
                                  style: TextStyle(
                                      color: Color(0xff05357D),
                                      fontFamily: 'rb',
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    '430,466',
                                    style: TextStyle(
                                        color: Color(0xff05357D),
                                        fontFamily: 'din',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: ScreenSize.width,
                              height: 74,
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F4F5),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            '40',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'din',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'أيام متبقية',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: 'rb',
                                                color: Color(0xffA1A1AA)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '7.9%',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'din',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'أيام متبقية',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: 'rb',
                                                color: Color(0xffA1A1AA)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '49%',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'din',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'أيام متبقية',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: 'rb',
                                                color: Color(0xffA1A1AA)),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'شهرياً',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'rb',
                                      color: Color(0xff05357D)),
                                ),
                                const SizedBox(width: 3,),
                                const Text(
                                  'توزيع الدخل',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'rb',
                                      color: Color(0xffA1A1AA)),
                                ),
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
                                const SizedBox(width: 3,),
                                const Text(
                                  'إيجار',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'rb',
                                      color: Color(0xffA1A1AA)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 60,)
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
