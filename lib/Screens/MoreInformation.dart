// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'Widgets/BottomNavigationBar.dart';

class MoreInformation extends StatefulWidget {
  const MoreInformation({super.key});

  @override
  State<MoreInformation> createState() => _MoreInformationState();
}

class _MoreInformationState extends State<MoreInformation> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
         
        Container(
            width: ScreenSize.width,
            decoration: const BoxDecoration(color: Colors.white, gradient: RadialGradient(
              
              radius: 0.5,
              center: Alignment.topRight,
              colors: [
              
            Color(0xff3D9FD7),
             Colors.white, 
          ])),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
              const Center(
                      child: Text(
                    'معلومات إضافية',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sst arabic'),
                  )),
                  SizedBox(height: 10,),
                  const Center(
                      child: Text(
                    'لإكمال الملف الاستثماري الخاص بك يرجي تعبئة المعلومات الاضافية ادناه',
                    style: TextStyle(fontSize: 11, fontFamily: 'din'),
                  )),
                  SizedBox(height: 20,),
                  Container(
                    height: 45,
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Color(0xff05357D)),
                      color: Colors.white,borderRadius: BorderRadius.circular(9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          PopupMenuButton(
                            color: Color(0xff05357D),
                            icon: Icon(Icons.expand_more_outlined),
                            itemBuilder: ( (context) => [
                            PopupMenuItem(value: '200', child: Center(child: Text('200',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                            PopupMenuItem(value: '600', child: Center(child: Text('600',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                            PopupMenuItem(value: '1000', child: Center(child: Text('1000',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                          ])),
                        //Icon(Icons.expand_more),
                        Text(
                    'المبلغ الذي تنوي استثماره',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'rb',color: Color(0xff909194)),
                  ),
                  Container(width: 20,),
                      ],),
                      ),
                      SizedBox(height: 10,),
                  Container(
                    height: 45,
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Color(0xff05357D)),
                      color: Colors.white,borderRadius: BorderRadius.circular(9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                       PopupMenuButton(
                          color: Color(0xff05357D),
                          icon: Icon(Icons.expand_more_outlined),
                          itemBuilder: ( (context) => [
                          PopupMenuItem(value: '200', child: Center(child: Text('200',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                          PopupMenuItem(value: '600', child: Center(child: Text('600',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                          PopupMenuItem(value: '1000', child: Center(child: Text('1000',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                        ])),
                        Text(
                    'الحالة الوظيفية',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'rb',color: Color(0xff909194)),
                  ),
                  Container(width: 20,),
                      ],),
                      ),
                      SizedBox(height: 10,),
                  Container(
                    height: 45,
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Color(0xff05357D)),
                      color: Colors.white,borderRadius: BorderRadius.circular(9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                        PopupMenuButton(
                          color: Color(0xff05357D),
                          icon: Icon(Icons.expand_more_outlined),
                          itemBuilder: ( (context) => [
                          PopupMenuItem(value: '200', child: Center(child: Text('200',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                          PopupMenuItem(value: '600', child: Center(child: Text('600',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                          PopupMenuItem(value: '1000', child: Center(child: Text('1000',style: TextStyle(fontFamily: 'rb',color: Colors.white),))),
                        ])),
                        Text(
                    'مصدر الثروة',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'rb',color: Color(0xff909194)),
                  ),
                  Container(width: 20,),
                      ],),
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyBar()));
                  },
                  child: Container(
                    height: 45,
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                        color: const Color(0xff05357D),
                        borderRadius: BorderRadius.circular(9)),
                    child: const Center(
                        child: Text(
                      'إكمال عملية التسجيل',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'rb'),
                    )),
                  ),
                ),
                
            ],),
          )
      ]),
    );
  }
}