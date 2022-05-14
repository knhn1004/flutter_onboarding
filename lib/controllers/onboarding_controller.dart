import 'package:flutter/widgets.dart';
import 'package:flutter_onboarding/models/onboarding_info.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  final selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  final pageController = PageController();

  nextPage() {
    if (isLastPage) {
      // go to home page
      pageController.animateToPage(0,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      'assets/order.png',
      'Order Your Food',
      'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vitae, quos!',
    ),
    OnboardingInfo(
      'assets/cook.png',
      'Cooking Safe Food',
      'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vitae, quos!',
    ),
    OnboardingInfo(
      'assets/deliver.png',
      'Quick Delivery',
      'Lorem, ipsum Gggor sit amet consectetur adipisicing elit. Vitae, quos!',
    ),
  ];
}
