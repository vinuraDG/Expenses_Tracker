import 'package:expenz/constant/colors.dart';
import 'package:expenz/data/onboarding_data.dart';
import 'package:expenz/screens/onboarding/front_page.dart';
import 'package:expenz/screens/onboarding/shared_onboarding_screen.dart';
import 'package:expenz/screens/user_data_screen.dart';
import 'package:expenz/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool showDetailsPage = false;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      // ignore: unrelated_type_equality_checks
                      showDetailsPage = value == 3;
                    });
                  },
                  children: [
                    FrontPage(),
                    SharedOnboardingScreen(title: OnBoardingData.OnBoardingDataList[0].title, imagepath: OnBoardingData.OnBoardingDataList[0].imagepath, description: OnBoardingData.OnBoardingDataList[0].description,),
                    SharedOnboardingScreen(title: OnBoardingData.OnBoardingDataList[1].title, imagepath: OnBoardingData.OnBoardingDataList[1].imagepath, description: OnBoardingData.OnBoardingDataList[1].description,),
                    SharedOnboardingScreen(title: OnBoardingData.OnBoardingDataList[2].title, imagepath: OnBoardingData.OnBoardingDataList[2].imagepath, description: OnBoardingData.OnBoardingDataList[2].description,),
                    
                  ],
                  ),
                  Container(
                      alignment: Alignment(0,0.65),
                      child: SmoothPageIndicator(
                        controller:_controller, 
                        count: 4,
                        effect: ScrollingDotsEffect(
                        activeDotColor: kMainColor,
                        dotColor: kLightGrey,
                        
                        dotHeight: 10,
                        dotWidth: 10
                      ),),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child:!showDetailsPage? GestureDetector(
                        onTap:() {
                          _controller.animateToPage(
                            _controller.page!.toInt() + 1,
                            duration: Duration(microseconds: 400),
                            curve: Curves.easeInOut,);
                        },
                        child: CustomBotton(
                          buttonName: showDetailsPage? "Get Started" : "Next",
                          buttonColor: kMainColor,
                          ),
                          )
                          :GestureDetector(
                        onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => const UserDataScreen()));
                        },
                        child: CustomBotton(
                          buttonName: showDetailsPage? "Get Started" : "Next",
                          buttonColor: kMainColor,
                          ),
                          )
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}