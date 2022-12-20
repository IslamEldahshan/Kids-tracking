import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/cubit/states.dart';
import 'package:login/moduels/driver.dart';
import 'package:login/moduels/home.dart';
import 'package:login/moduels/location.dart';
import 'package:login/moduels/notifications.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const HomeScreen(),
    const DriverScreen(),
    const LocationScreen(),
    const NotificationScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }


  bool isRated = false;
  IconData iconRate = Icons.star_border_rounded;
  Color iconColor = Colors.grey;
  void changeDriverRate(){
    isRated = !isRated;
    if(isRated){
      iconRate = Icons.star_rate_rounded;
      iconColor = Colors.amber;
    }
    else{
      iconRate = Icons.star_border_rounded;
      iconColor = Colors.grey;
    }
    emit(ChangeDriverRateState());
  }



}