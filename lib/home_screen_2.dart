import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login/components/components.dart';
import 'package:login/components/constants.dart';
import 'package:login/home_screen.dart';
import 'package:login/login_screen.dart';

class Home_2 extends StatelessWidget {
  const Home_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20.0),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: SvgPicture.asset(
                  'images/hello.svg',
                  height: MediaQuery.of(context).size.height/2,
                ),
                // child: Image.asset(
                //   'images/hello.svg',
                // ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome back to your school',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18.0,
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
                    navigateTo(context: context, screen: Home());
                  },
                  child: Text(
                    'Get Started',
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
    );
  }
}
