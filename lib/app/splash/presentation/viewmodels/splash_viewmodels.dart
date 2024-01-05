import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';

class SplashViewmodel extends ChangeNotifier {
  final pageNumber = 4;

  final PageController pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  int get currentPage => _currentPage;

  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  List<Map<String, String>> onboardingData = [
    {
      "shortDesc": "PRE-ORDER \nYour food items",
      "image": "assets/icons/first_slider_image.png",
      "longDesc":
          "PRE-ORDER Your food! To take advantage of the cheapest price anywhere, reliable supply and delivery of fresh produce.",
    },
    {
      "shortDesc":
          "Want fresh food in the precise measure, in your kitchen, or for your event?",
      "image": "assets/icons/background_1.png",
      "longDesc":
          "Join Soupe, the cheapest food community for all consumers and the most profitable for farmers.\n",
    },
  ];
}
