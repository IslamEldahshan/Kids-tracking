
import 'package:flutter/material.dart';
import 'package:login/components/constants.dart';

void navigateTo({
  required BuildContext context,
  required Widget screen,
}){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}


void navigateAndFinish(context, Widget screen) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false,
  );
}


Widget buildHomeItem({
  required String text,
  IconData icon = Icons.check_circle_rounded,
  Color iconColor = Colors.green,
}) => Container(
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow:  [
      BoxShadow(
        offset: Offset(0, 5),
        color: Colors.black26,
        blurRadius: 10.0,
      ),
    ],
    borderRadius: BorderRadius.circular(12.0,),
  ),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
          ),
        ),
        Icon(
          icon,
          color: iconColor,
          size: 35.0,
        ),
      ],
    ),
  ),
);


Widget buildDriverItem({
  required String text,
  required String value,
  required IconData icon,
}) => Container(
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow:  const [
      BoxShadow(
        offset: Offset(0, 5),
        color: Colors.black26,
        blurRadius: 10.0,
      ),
    ],
    borderRadius: BorderRadius.circular(12.0,),
  ),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: primaryColor,
          size: 30.0,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  ),
);


Widget buildNotification() => Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12.0,),
    boxShadow: const [
      BoxShadow(
        offset: Offset(2, 2),
        color: Colors.black26,
        blurRadius: 3.0,
        spreadRadius: 1.0,
      ),
    ],
  ),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(
              Icons.notifications_on_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            SizedBox(
              width: 3.0,
            ),
            Expanded(
              child: Text(
                'Driver Bus',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Text(
              '3:45',
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Your child doesn\'t come to the school bus',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          '10 min ago',
          style: TextStyle(
            color: primaryColor,
            fontSize: 16.0,
          ),
        ),
      ],
    ),
  ),
);