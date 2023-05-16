// ignore_for_file: non_constant_identifier_names, file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'PasswordRemember.dart';
import 'Widgets/BottomNavigationBar.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize=MediaQuery.of(context).size;
     return Scaffold(
      backgroundColor: const Color(0xff05357D),
      body: Stack(
        children:[ SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/images/stadia.png',height: 400,)),
              Container(
                height: 540,
                width: ScreenSize.width,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    gradient: const RadialGradient(
                        radius: 0.4,
                        center: Alignment.center,
                        colors: [
                          Color(0xff3D9FD7),
                          Colors.white,
                        ])),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: 
                              MainAxisAlignment.center,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: Container(
                                              decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9)),
                                              height: 45,
                                              child: FormBuilder(
                                                child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(9),
                                      borderSide: const BorderSide(
                                          color: Color(0xff05357D))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Color(0xff05357D)),
                                      borderRadius: BorderRadius.circular(9)),
                                  label: const Text(
                                    'البريد الإلكتروني',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'rb',
                                      fontSize: 12,
                                      color: Color(0xff696969),
                                    ),
                                  )),
                            validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)')
                                        .hasMatch(value)) {
                                  return 'incorrect';
                                } else {
                                  print(value);
                                }
                                return null;
                            },
                                                ),
                                              ),
                                            ),
                              ),
                                            const SizedBox(height: 10,),
                                            Container(
                                              height: 45,
                                              decoration: BoxDecoration(color: Colors.white,
                                              borderRadius: BorderRadius.circular(9),
                                              ),
                                              child: TextFormField(
                                                keyboardType: TextInputType.visiblePassword,
                                                style: const TextStyle(color: Colors.black),
                                                decoration: InputDecoration(
                                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                                                  enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xff05357D)),
                            borderRadius: BorderRadius.circular(9),),
                                                  label:const Text('كلمة المرور', style: TextStyle(fontFamily: 'rb',fontSize: 12, fontWeight: FontWeight.bold,color: Color(0xff696969),),),
                                                ),
                                                
                                                validator: (value){
                                                  if(value!.isEmpty ||!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)){ 
                            return 'incorrect';
                                                  }else{
                            print(value);
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            const SizedBox(height: 10,),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const MyBar()));
                                              },
                                              child: Container(
                                                height: 45,
                                                width: ScreenSize.width,
                                                decoration: BoxDecoration(
                            color: const Color(0xff05357D),
                            borderRadius: BorderRadius.circular(9)),
                                                child: const Center(
                            child: Text(
                                                  'دخول',
                                                  style: TextStyle(
                            fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'rb'),
                                                )),
                                              ),
                                            ),
                                            const SizedBox(height: 20,),
                                             InkWell(
                                              onTap: (() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const PasswordRemember()));
                                                  }),
                                              child: const Text(
                            'هل نسيت كلمة المرور ؟',
                            style: TextStyle(
                              fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3D9FD7),
                                fontFamily: 'din'),
                                                  ),
                                            ),
                                                const SizedBox(height: 20,),
                                                const Text(
                                                  'بدخولك للتطبيق، انت توافق علي جميع الشروط والاحكام',
                                                  style: TextStyle(
                            fontSize: 11,
                              color: Colors.black,
                              fontFamily: 'din'),
                                                )
                            ],),
                          ),
                        ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}