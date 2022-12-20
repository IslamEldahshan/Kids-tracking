import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login/components/constants.dart';
import 'package:login/cubit/cubit.dart';
import 'package:login/cubit/states.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return SafeArea(
          child: Scaffold(
            backgroundColor: primaryColor,
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: GNav(
              activeColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.white,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  iconColor: Colors.white,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.drive_eta_rounded,
                  iconColor: Colors.white,
                  text: 'Driver',
                ),
                GButton(
                  icon: Icons.location_on_outlined,
                  iconColor: Colors.white,
                  text: 'Location',
                ),
                GButton(
                  icon: Icons.notifications_none_rounded,
                  iconColor: Colors.white,
                  text: 'Notification',
                ),
              ],
              selectedIndex: cubit.currentIndex,
              onTabChange: (index) {
                cubit.changeBottom(index);
              },
            ),
            // bottomNavigationBar: BottomNavigationBar(
            //   elevation: 0,
            //   type: BottomNavigationBarType.fixed,
            //   backgroundColor: secondColor,
            //   selectedItemColor: primaryColor,
            //   unselectedItemColor: Colors.black,
            //   currentIndex: cubit.currentIndex,
            //   onTap: (index) {
            //     cubit.changeBottom(index);
            //   },
            //   items: const [
            //     BottomNavigationBarItem(
            //       icon: Icon(
            //         Icons.home,
            //       ),
            //       label: "Home",
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(
            //         Icons.drive_eta_rounded,
            //       ),
            //       label: "Drive",
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(
            //         Icons.location_on_outlined,
            //       ),
            //       label: "Location",
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(
            //         Icons.notifications_none_rounded,
            //       ),
            //       label: "Notification",
            //     ),
            //   ],
            // ),
          ),
        );
      },
    );
  }
}
