import 'package:flutter_onboarding/models/onboarding_info.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;

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
