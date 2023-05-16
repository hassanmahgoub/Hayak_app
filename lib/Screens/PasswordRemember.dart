// ignore_for_file: non_constant_identifier_names, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:hayak_app/Screens/LoginScreen.dart';

class PasswordRemember extends StatefulWidget {
  const PasswordRemember({super.key});

  @override
  State<PasswordRemember> createState() => _PasswordRememberState();
}

class _PasswordRememberState extends State<PasswordRemember> {
  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'تحقق من كلمة المرور',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'sst arabic'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'لقد تم ارسال رمز تحقق لمرة واحدة علي رقم جوالكم المسجل واخرة 966******54',
                  style: TextStyle(fontSize: 11, fontFamily: 'din'),
                ),
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
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xff05357D)),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        label: const Center(
                            child: Text(
                          '——————',
                          style: TextStyle(
                            fontFamily: 'rb',
                            fontSize: 16,
                            color: Color(0xff05357D),
                          ),
                        )),
                        prefixIcon:
                            const Icon(Icons.done, color: Color(0xff05357D))),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Container(
                    height: 45,
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                        color: const Color(0xff05357D),
                        borderRadius: BorderRadius.circular(9)),
                    child: const Center(
                        child: Text(
                      'تحقق',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'rb'),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'إعادة ارسال رمز التحقق مرة اخرى',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3D9FD7),
                      fontFamily: 'rb'),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
