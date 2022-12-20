import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login/components/components.dart';
import 'package:login/components/constants.dart';
import 'package:login/cubit/cubit.dart';
import 'package:login/cubit/states.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            backgroundColor: primaryColor,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                size: 35.0,
                color: Colors.black,
              ),
            ),
            title: const Text(
              'Driver INFO',
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 1.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0,),
                    border: Border.all(
                      color: primaryColor, // red as border color
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 2),
                        spreadRadius: 2.0,
                        blurRadius: 5.0,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor('##d7e8f7'),
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(90.0,),
                      topEnd: Radius.circular(90.0,),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 40.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundColor: HexColor('#eac7cb'),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 80.0,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Esraa Mohamed',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                Row(
                                  children: [
                                    // Icon(
                                    //   Icons.star_border_rounded,
                                    //   color: Colors.grey,
                                    //   size: 40.0,
                                    // ),
                                    IconButton(
                                      onPressed: () {
                                        cubit.changeDriverRate();
                                      },
                                      padding: EdgeInsets.zero,
                                      icon: Icon(
                                        cubit.iconRate,
                                        color: cubit.iconColor,
                                        size: 40.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    const Text(
                                      'Driver',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0
                          ),
                          child: Divider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        buildDriverItem(
                            icon: Icons.phone,
                            text: 'Phone',
                            value: '0123456787'
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        buildDriverItem(
                            icon: Icons.email_outlined,
                            text: 'Email',
                            value: 'moh@gmail.com'
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        buildDriverItem(
                            icon: Icons.person_outline_rounded,
                            text: 'Age',
                            value: '35 Years old'
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        buildDriverItem(
                            icon: Icons.location_on_outlined,
                            text: 'Location',
                            value: 'Mansoura'
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
