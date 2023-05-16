// ignore_for_file: use_full_hex_values_for_flutter_colors, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'EmailConfirm.dart';

class AddNewAccount extends StatefulWidget {
  const AddNewAccount({super.key});

  @override
  State<AddNewAccount> createState() => _AddNewAccountState();
}

class _AddNewAccountState extends State<AddNewAccount> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          width: ScreenSize.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              gradient: RadialGradient(
                  radius: 0.4,
                  center: Alignment.center,
                  colors: [
                    Color(0xff3D9FD7),
                    Colors.white,
                  ])),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('ادخل اسمك والبريد الالكتروني',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'sst arabic')),
              const SizedBox(
                height: 10,
              ),
              const Text('سنرسل لك بريداً الكترونياً لانشاء حسابك',
                  style: TextStyle(
                      fontSize: 11, color: Colors.black, fontFamily: 'din')),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff05357D)),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9)),
                    label: const Text(
                      'الاسم الاول',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff696969),
                          fontFamily: 'rb'),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'[a-zA-Z]+').hasMatch(value)) {
                      return 'incorrect';
                    } else {
                      print(value);
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                                width: 1.5, color: Color(0xff05357D))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff05357D)),
                            borderRadius: BorderRadius.circular(9)),
                        label: const Text(
                          'عنوان البريد الالكتروني',
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
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: FormBuilder(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5, color: Color(0xff05357D)),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        label: const Text(
                          'رقم الهوية الوطنية',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff696969),
                              fontFamily: 'rb'),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
                                .hasMatch(value)) {
                          return 'incorrect';
                        } else {
                          print(value);
                        }
                        return null;
                      }),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmailConfirm()));
                },
                child: Container(
                  height: 45,
                  width: ScreenSize.width,
                  decoration: BoxDecoration(
                      color: const Color(0xff05357D),
                      borderRadius: BorderRadius.circular(9)),
                  child: const Center(
                      child: Text(
                    '! لنذهب',
                    style: TextStyle(
                      fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'rb'),
                  )),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
