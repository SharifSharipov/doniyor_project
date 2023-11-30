import 'package:doniyor_project/utils/icons.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        title: Text("Doniyor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.baseDark),),
      ),
      body: SizedBox(
          height: height,
          width: width,
          child: Image.asset(AppImages.splash1,width:height ,height:width ,fit: BoxFit.cover,)),
    );
  }
}
