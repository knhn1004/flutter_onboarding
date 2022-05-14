import 'package:flutter/material.dart';
import 'package:flutter_onboarding/controllers/onboarding_controller.dart';
import 'package:get/state_manager.dart';

class OnboardingPage extends StatelessWidget {
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                onPageChanged: controller.selectedPageIndex,
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
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: List.generate(
                    controller.onboardingPages.length,
                    (index) => Obx(() => Container(
                          margin: const EdgeInsets.all(4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: controller.selectedPageIndex.value == index
                                ? Colors.red
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
