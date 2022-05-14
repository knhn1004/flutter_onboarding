import 'package:flutter/material.dart';
import 'package:flutter_onboarding/controllers/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: controller.onboardingPages.length,
          itemBuilder: (ctx, i) {
            return Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Image.asset(controller.onboardingPages[i].imageAsset),
                  const SizedBox(height: 32),
                  Text(
                    controller.onboardingPages[i].title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 64),
                    child: Text(
                      controller.onboardingPages[i].description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ]));
          }),
    );
  }
}
