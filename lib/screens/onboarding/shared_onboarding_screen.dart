import 'package:expenz/constant/colors.dart';
import 'package:flutter/material.dart';

class SharedOnboardingScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imagepath;

  const SharedOnboardingScreen({super.key, required this.title, required this.imagepath, required this.description,});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagepath,
          width: 200,
          fit: BoxFit.cover,

        ),
        const SizedBox(
          height: 20,
        ),
        Text(title,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
          ),
          const SizedBox(
          height: 20,
        ),
        Text(description,
          style: TextStyle(
            fontSize: 16,
            color: kGrey,
            fontWeight: FontWeight.w500,
          ),),
          const SizedBox(
          height: 20,
        ),
        
        
      ],
    );
  }
}