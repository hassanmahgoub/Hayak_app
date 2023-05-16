// ignore_for_file: file_names, non_constant_identifier_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Invesment extends StatefulWidget {
  const Invesment({super.key});

  @override
  State<Invesment> createState() => _InvesmentState();
}

class _InvesmentState extends State<Invesment> {
  List<Color> gradientColors = [
    Colors.white,
    const Color(0xff3D9FD7)
  ];
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
            child: Text(
          'استثماراتي',
          style: TextStyle(
              fontFamily: 'rb',
              fontSize: 18,
              color: Color(0xff05357D),
              fontWeight: FontWeight.bold),
        )),
        const SizedBox(
          height: 6,
        ),
        const Center(
            child: Text(
          'قيمة الملف',
          style: TextStyle(
            fontFamily: 'rb',
            fontSize: 11,
          ),
        )),
        const SizedBox(
          height: 6,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'ريال',
                style: TextStyle(
                    fontFamily: 'rb',
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff05357D)),
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              '430,466',
              style: TextStyle(
                  fontFamily: 'din',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff05357D)),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 196,
          width: ScreenSize.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: LineChart(
              LineChartData(
                titlesData: FlTitlesData(rightTitles: SideTitles(showTitles: false),topTitles: SideTitles(showTitles: false),leftTitles: SideTitles(showTitles: false),
                bottomTitles: SideTitles(showTitles: true,reservedSize: 25,interval: 1,
                getTextStyles:(context, value) => const TextStyle(color: Color(0xff444444),fontFamily: 'din',fontSize: 12),
                getTitles:(value) {
                  switch (value.toInt()){
                    case 0:
                    return 'Jan';
                    case 1:
                    return 'Feb';
                    case 2:
                    return 'Mar';
                    case 3:
                    return 'Apr';
                    case 4:
                    return 'May';
                    case 5:
                    return 'Jun';
                    case 6:
                    return 'Jul';
                    case 7:
                    return 'Aug';
                    case 8:
                    return 'Sep';
                    case 9:
                    return 'Oct';
                    case 10:
                    return 'Nov';
                    case 11:
                    return 'Dec';
                  }
                   return '';
                },
                )
                ),
                minX: 0,
                maxX: 11,
                maxY: 6,
                gridData: FlGridData(
                  show: false,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: Colors.white,
                      strokeWidth: 1,
                    );
                  },
                  drawVerticalLine: true,
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: Colors.black,
                      strokeWidth: 1,
                    );
                  },
                ),
                borderData: FlBorderData(
                  show: false,
                  border: Border.all(color: const Color(0xff37434d), width: 1),
                ),
                lineBarsData: [
                  LineChartBarData(
                    colorStops: [
                      
                    ],
                    //dotData: FlDotData(checkToShowDot: LineChartBarData()),
                    spots: [
                      const FlSpot(0, 1),
                      const FlSpot(1, 3),
                      const FlSpot(2, 2.5),
                      const FlSpot(3, 1.5),
                      const FlSpot(4, 2),
                      const FlSpot(5, 3.5),
                      const FlSpot(6, 4),
                      const FlSpot(7, 5),
                      const FlSpot(8, 4.9),
                      const FlSpot(9, 4),
                      const FlSpot(10, 5),
                      const FlSpot(11, 6),
                      
                    ],
                    isCurved: false,
                    colors: [
                      const Color(0xff3D9FD7),
                    ],
                    barWidth: 3.5,
                    // dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      gradientFrom: const Offset(0,0),
                      gradientTo: const Offset(0,1.0),
                        show: true,
                        colors: gradientColors
                            .map((e) => e.withOpacity(0.9))
                            .toList()),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 105,
            width: ScreenSize.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 229, 227, 227),
                    blurRadius: 3,
                    offset: Offset.fromDirection(4, -4),
                  )
                ],
                color: Colors.white),
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'عائد الايجار السنوي',
                        style: TextStyle(fontFamily: 'rb', fontSize: 11),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '7.67%',
                        style: TextStyle(
                            fontFamily: 'din',
                            fontSize: 18,
                            color: Color(0xff05357D),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                height: 81,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 229, 227, 227),
                        blurRadius: 3,
                        offset: Offset.fromDirection(-1, -4),
                      )
                    ],
                    color: Colors.white),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'التدفقات النقدية',
                      style: TextStyle(fontFamily: 'rb', fontSize: 11),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'ريال',
                              style: TextStyle(
                                  fontFamily: 'rb',
                                  fontSize: 11,
                                  color: Color(0xff05357D)),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '2,031',
                            style: TextStyle(
                                fontFamily: 'din',
                                fontSize: 18,
                                color: Color(0xff05357D),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Container(
                height: 81,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 229, 227, 227),
                        blurRadius: 3,
                        offset: Offset.fromDirection(4, -4),
                      )
                    ],
                    color: Colors.white),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'الارباح المحققة',
                      style: TextStyle(fontFamily: 'rb', fontSize: 11),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'ريال',
                              style: TextStyle(
                                  fontFamily: 'rb',
                                  fontSize: 11,
                                  color: Color(0xff05357D)),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '2,031',
                            style: TextStyle(
                                fontFamily: 'din',
                                fontSize: 18,
                                color: Color(0xff05357D),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'قيمة الاستثمارات',
                style: TextStyle(fontFamily: 'rb', fontSize: 11),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
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
                  'استثمارات تحت التنفيذ',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'rb', fontSize: 14),
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
                  'استثمارات مموله(2)',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'rb', fontSize: 14),
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
            height: 90,
            width: ScreenSize.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 229, 227, 227),
                    blurRadius: 3,
                    offset: Offset.fromDirection(4, -4),
                  )
                ],
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                  Expanded(child: Container()),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'شقة استديو، مطله علي شارع الملك فهد',
                          style: TextStyle(
                              fontFamily: 'rb',
                              fontSize: 11,
                              color: Color(0xff909194)),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        SizedBox(
                          width: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              'ريال',
                              style: TextStyle(
                                  fontFamily: 'rb',
                                  fontSize: 10,
                                  color: Color(0xff05357D),
                                  fontWeight: FontWeight.bold),
                            ),
                             SizedBox(
                              width: 3,
                            ),
                            Text(
                              '300.000',
                              style: TextStyle(
                                  fontFamily: 'din',
                                  fontSize: 14,
                                  color: Color(0xff05357D),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          'تدفقات نقديه',
                          style: TextStyle(
                              fontFamily: 'din',
                              fontSize: 11,
                              color: Color(0xff909194),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset(
                        'assets/images/riyadh.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 90,
            width: ScreenSize.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 229, 227, 227),
                    blurRadius: 3,
                    offset: Offset.fromDirection(4, -4),
                  )
                ],
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                  Expanded(child: Container()),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'شقة استديو، مطله علي شارع الملك فهد',
                          style: TextStyle(
                              fontFamily: 'rb',
                              fontSize: 11,
                              color: Color(0xff909194)),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        SizedBox(
                          width: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              'ريال',
                              style: TextStyle(
                                  fontFamily: 'din',
                                  fontSize: 10,
                                  color: Color(0xff05357D),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '130.000',
                              style: TextStyle(
                                  fontFamily: 'din',
                                  fontSize: 14,
                                  color: Color(0xff05357D),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          'تدفقات نقديه',
                          style: TextStyle(
                              fontFamily: 'din',
                              fontSize: 11,
                              color: Color(0xff909194),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset(
                        'assets/images/riyadh.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 403,
            width: ScreenSize.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 229, 227, 227),
                    blurRadius: 3,
                    offset: Offset.fromDirection(4, -4),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CircularPercentIndicator(
                      curve: Curves.linear,
                      animation: true,
                      center: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('430,466',style: TextStyle(fontFamily: 'din',fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff05357D)),),
                          Text('القيمة الإجمالية',style: TextStyle(fontFamily: 'rb',fontSize: 11),),
                        ],
                      ),
                      radius: 100,
                      lineWidth: 22,
                      percent: 0.5,
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: const Color(0xffA6CEE3),
                      progressColor: const Color(0xff1F78B4),
                    ),
                  ),
                  const SizedBox(height: 60,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                    const Text('ريال',style: TextStyle(fontFamily: 'rb',fontSize: 10),),
                    const SizedBox(width: 5,),
                    const Text('300,000',style: TextStyle(fontFamily: 'din',fontSize: 14),),
                    Expanded(child: Container()),
                    const Text('الاستثمارات الحالية',style: TextStyle(fontFamily: 'rb',fontSize: 11),),
                    const SizedBox(width: 10,),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xff1F78B4)),)
                  ],),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                    const Text('ريال',style: TextStyle(fontFamily: 'rb',fontSize: 10),),
                    const SizedBox(width: 5,),
                    const Text('130,000',style: TextStyle(fontFamily: 'din',fontSize: 14),),
                    Expanded(child: Container()),
                    const Text('الاستثمارات تحت التنفيذ',style: TextStyle(fontFamily: 'rb',fontSize: 11),),
                    const SizedBox(width: 10,),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xff3D9FD7)),)
                  ],),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                    const Text('ريال',style: TextStyle(fontFamily: 'rb',fontSize: 10),),
                    const SizedBox(width: 5,),
                    const Text('2,031',style: TextStyle(fontFamily: 'din',fontSize: 14),),
                    Expanded(child: Container()),
                    const Text('الرصيد النقدي',style: TextStyle(fontFamily: 'rb',fontSize: 11),),
                    const SizedBox(width: 10,),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xffA6CEE3)),)
                  ],)
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,)
      ])),
    ));
  }
}
