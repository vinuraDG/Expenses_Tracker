import 'package:expenz/models/onboarding_model.dart';

class OnBoardingData{
  // ignore: non_constant_identifier_names
  static final List<OnboardingModel> OnBoardingDataList = [
    // Example data, replace with your actual onboarding data
    OnboardingModel(
      title: 'Welcome',
      description: 'Welcome to the app!',
      imagepath: 'assets/images/onboard_1.png',
      
    ),
    OnboardingModel(
      title: 'Track Expenses',
      description: 'Easily track your expenses.',
      imagepath: 'assets/images/onboard_2.png',
    ),
    OnboardingModel(
      title: 'Save Money',
      description: 'Save money with insights.',
      imagepath: 'assets/images/onboard_3.png',
    ),
    ];
  }