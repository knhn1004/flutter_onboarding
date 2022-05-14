import 'package:flutter/material.dart';
import 'package:flutter_onboarding/controllers/onboarding_controller.dart';
import 'package:get/state_manager.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (ctx, i) {
                  return Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Image.asset(_controller.onboardingPages[i].imageAsset),
                        const SizedBox(height: 32),
                        Text(
                          _controller.onboardingPages[i].title,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 64),
                          child: Text(
                            _controller.onboardingPages[i].description,
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
                    _controller.onboardingPages.length,
                    (index) => Obx(() => Container(
                          margin: const EdgeInsets.all(4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: _controller.selectedPageIndex.value == index
                                ? Colors.red
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ))),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                elevation: 0,
                child:
                    Obx(() => Text(_controller.isLastPage ? 'Start' : 'Next')),
                onPressed: () {
                  _controller.nextPage();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
