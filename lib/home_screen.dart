import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login/components/components.dart';
import 'package:login/components/constants.dart';
import 'package:login/login_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: SvgPicture.asset(
                    'images/happy_student.svg',
                    height: MediaQuery.of(context).size.height/2,
                  ),
                ),
                Text(
                  'APP TRACING YOUR CHILD',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'dsa ffs fdsf fdsfdsf sdfdsf fdsf',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'dsa ffs fdsf fdsfdsf sdfdsf fdsf',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'dsa ffs fdsf fdsfdsf sdfdsf fdsf',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(30.0,),
                    color: primaryColor,
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: MaterialButton(
                    onPressed: (){
                      navigateTo(context: context, screen: LoginScreen());
                    },
                    child: Text(
                      'Track Your Child',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
