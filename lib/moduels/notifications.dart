import 'package:flutter/material.dart';
import 'package:login/components/components.dart';
import 'package:login/components/constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColor,
      appBar: AppBar(
        backgroundColor: secondColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.menu_rounded,
            size: 35.0,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            color: primaryColor
          ),
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
                  color: primaryColor,  // red as border color
                ),
                boxShadow: [
                  const BoxShadow(
                    offset: Offset(0, 2),
                    spreadRadius: 2.0,
                    blurRadius: 3.0,
                    color: Colors.black26,
                  ),
                  BoxShadow(
                    spreadRadius: 1.0,
                    blurRadius: 1.0,
                    color: primaryColor,
                  ),
                ],
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: (){},
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
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => buildNotification(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
