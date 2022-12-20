import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login/components/components.dart';
import 'package:login/components/constants.dart';
import 'package:login/layout/layout_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var idController = TextEditingController();
  var passwordController = TextEditingController();

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
                    'images/login.svg',
                    height: MediaQuery.of(context).size.height/2,
                  ),
                ),
                Material(
                  elevation: 5.0,
                  shadowColor: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8.0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.person_outline_rounded,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                        hintText: 'Strudent Id',
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 3.0,
                            ),
                        ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Material(
                  elevation: 5.0,
                  shadowColor: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8.0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.error_outline_rounded,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                        hintText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(5.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 3.0,
                            ),
                        ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
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
                      navigateAndFinish(context, LayoutScreen());
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New User?',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
