import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login/components/components.dart';
import 'package:login/components/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ),
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.menu_rounded,
            size: 35.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
              child: Container(
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50.0,
                      ),
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
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 45.0,
                              ),
                              Text(
                                'Salma',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Container(
                                  alignment: AlignmentDirectional.center,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0,),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: primaryColor,  // red as border color
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: const Offset(0, 5),
                                        color: Colors.black26,
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: const Text(
                                      'ID : 1234567',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40.0,
                              ),
                              buildHomeItem(
                                text: 'BUS IN',
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              buildHomeItem(
                                text: 'BUS OUT',
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              buildHomeItem(
                                text: 'SCHOOL IN',
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              buildHomeItem(
                                text: 'SCHOOL OUT',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 50.0,
                      backgroundColor: HexColor('#eac7cb'),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 80.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
