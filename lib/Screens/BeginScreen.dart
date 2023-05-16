// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'AddNewAccount.dart';
import 'LoginScreen.dart';

class BeginScreen extends StatefulWidget {
  const BeginScreen({super.key});

  @override
  State<BeginScreen> createState() => _BeginScreenState();
}

class _BeginScreenState extends State<BeginScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff05357D),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/stadia.png',),
              InkWell(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddNewAccount()));
                }),
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff3D9FD7),
                        borderRadius: BorderRadius.circular(9)),
                    height: 45,
                    width: ScreenSize.width,
                    child: const Center(
                        child: Text('انشاء حساب جديد',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'rb')))),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                }),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9)),
                    height: 45,
                    width: ScreenSize.width,
                    child: const Center(
                        child: Text('دخول',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff05357D),
                                fontFamily: 'rb')))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'بدخولك للتطبيق، انت توافق علي جميع الشروط والاحكام',
                style: TextStyle(
                    fontSize: 11, fontFamily: 'din', color: Colors.white),
              ),
              const SizedBox(
                height: 60,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'أكتشف العقارات المتوفرة',
                      style: TextStyle(
                          fontSize: 11, fontFamily: 'din', color: Colors.white),
                    ),
                    Text(
                      'طريقة العمل',
                      style: TextStyle(
                          fontSize: 11, fontFamily: 'din', color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
