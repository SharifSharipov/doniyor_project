import 'package:doniyor_project/ui/photo_screen/photo_screen.dart';
import 'package:doniyor_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showDetails = false;
  _init() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return PhotoScreen();
          },
        ),
      );
    }
  }

  @override
  void initState() {
    _init();
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        showDetails = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: AnimatedContainer(
          width: showDetails ?  width : 225.0,
          height: showDetails ? height : 225.0,
          decoration: BoxDecoration(
            borderRadius: showDetails
                ? BorderRadius.circular(0)
                : BorderRadius.circular(122.5),
            color: AppColors.baseDark,
          ),
          duration: const Duration(milliseconds: 1200),
          curve: Curves.fastOutSlowIn,
          child:Lottie.asset(AppImages.login)//Center(child: Text("Welcome to Doniyor",style: TextStyle(color: AppColors.white),)),
        ),
      ),
    );
  }
}