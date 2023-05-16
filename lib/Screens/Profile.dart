// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize=MediaQuery.of(context).size;
    return  Scaffold(
      body:SafeArea(
          child: Padding(
        padding:  const EdgeInsets.only(top: 20),
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'الملف الشخصي',
                  style: TextStyle(
                      fontFamily: 'rb', fontSize: 18, color: Color(0xff05357D)),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Center(
                    child: CircleAvatar(
                      backgroundImage: const AssetImage('assets/images/60A026EC-3FED-4156-8D49-B4E1DE4C00CB_1_102_o.jpeg'),
                  radius: 50,
                  backgroundColor: const Color(0xff3D9FD7),
                  child: Stack(
                    children:[ Padding(
                      padding: const EdgeInsets.only(top: 70,left: 70),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 2),
                          color: const Color(0xff05357D),
                          borderRadius: BorderRadius.circular(20)),
                          child: const Icon(Icons.edit,color: Colors.white,size: 20,),
                          ),
                    ),
              ]),
                )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 103,
                  width: ScreenSize.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 229, 227, 227),
                          blurRadius: 3,
                          offset: Offset.fromDirection(4, -4),
                        )
                      ]),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'عائد الايجار السنوي',
                              style: TextStyle(
                                fontFamily: 'rb',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '0%',
                              style: TextStyle(
                                  fontFamily: 'rb',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff05357D)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 103,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 229, 227, 227),
                                blurRadius: 3,
                                offset: Offset.fromDirection(4, -4),
                              )
                            ]),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'التدفقات النقدية',
                              style: TextStyle(
                                fontFamily: 'rb',
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'ريال',
                                    style: TextStyle(
                                        fontFamily: 'rb',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05357D)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        fontFamily: 'rb',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05357D)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 103,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 229, 227, 227),
                                blurRadius: 3,
                                offset: Offset.fromDirection(4, -4),
                              )
                            ]),
                        child: const Column(children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'الارباح المحققة',
                            style: TextStyle(
                              fontFamily: 'rb',
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'ريال',
                                  style: TextStyle(
                                      fontFamily: 'rb',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff05357D)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontFamily: 'rb',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff05357D)),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: LinearPercentIndicator(
                          alignment: MainAxisAlignment.start,
                          barRadius: const Radius.circular(9),
                          //width: 120,
                          lineHeight: 5,
                          percent: 1,
                          progressColor: const Color(0xffEEEEEE),
                          backgroundColor: const Color(0xff05357D),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: const Color(0xffE0E0E0)),
                              color: const Color(0xff909194),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'متقدم',
                          style: TextStyle(fontFamily: 'rb', fontSize: 9),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: LinearPercentIndicator(
                          alignment: MainAxisAlignment.start,
                          barRadius: const Radius.circular(9),
                          //width: 78,
                          lineHeight: 5,
                          percent: 1,
                          progressColor: const Color(0xffEEEEEE),
                          backgroundColor: const Color(0xff05357D),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: const Color(0xffE0E0E0)),
                              color: const Color(0xff05357D),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'مبتدئ',
                          style: TextStyle(
                            fontFamily: 'rb',
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: LinearPercentIndicator(
                          alignment: MainAxisAlignment.start,
                          barRadius: const Radius.circular(9),
                          //width: 163,
                          lineHeight: 5,
                          percent: 0.7,
                          progressColor: const Color(0xffEEEEEE),
                          backgroundColor: const Color(0xff05357D),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                          height: 30,
                        ),
                const Text('الاستثمارات في 2022',style: TextStyle(fontFamily: 'rb',fontSize: 11),),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('ريال',style: TextStyle(fontFamily: 'rb',fontSize: 17,color: Color(0xff05357D)),),
                  ),
                  SizedBox(
                          width: 5,
                        ),
                  Text('5,000',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'din',fontSize: 26,color: Color(0xff05357D)),),
                ],),
                const Row(children: [
                  Icon(Icons.arrow_back_ios,size: 15,color: Color(0xff05357D),),
                  SizedBox(width: 10,),
                  Text('المرحلة التالية',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'rb',fontSize: 11,color: Color(0xff05357D)),),
                ],),
                const SizedBox(height: 10,),
                LinearPercentIndicator(
                  alignment: MainAxisAlignment.start,
                  barRadius: const Radius.circular(9),
                  lineHeight: 5,
                  percent: 0.8,
                  progressColor: const Color(0xffEEEEEE),
                  backgroundColor: const Color(0xff05357D),
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('ريال',style: TextStyle(fontFamily: 'rb',fontSize: 11,color: Color(0xff05357D)),),
                  ),
                  SizedBox(
                          width: 5,
                        ),
                  Text('5,000',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'din',fontSize: 18,color: Color(0xff05357D)),),
                ],),
                const SizedBox(height: 20,),
                Container(height: 45,width: ScreenSize.width,decoration: BoxDecoration(color: const Color(0xffE0E0E0), borderRadius: BorderRadius.circular(9)),
                child: const Center(child: Text('الدعم والمساعدة',style: TextStyle(fontFamily: 'rb',fontSize: 14,color: Color(0xff909194)),)),
                ),
                const SizedBox(height: 10,),
                const Text('v 1.0 حياك',style: TextStyle(fontFamily: 'rb',fontSize: 11,),)
              ],
            ),
          ),
        ),
      )),
    );
  }
}