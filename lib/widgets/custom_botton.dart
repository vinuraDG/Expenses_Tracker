import 'package:expenz/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;

  const CustomBotton({super.key, required this.buttonName, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height * 0.06 ,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: buttonColor,


      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kWhite,
          ),
        ),
      ),
    );
  }
}