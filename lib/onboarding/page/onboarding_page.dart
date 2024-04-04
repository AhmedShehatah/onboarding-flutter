import 'package:flutter/material.dart';
import 'package:onboarding/onboarding/widgets/images/devices_widget.dart';
import 'package:onboarding/onboarding/widgets/dot_inducator_widget.dart';
import 'package:onboarding/onboarding/widgets/images/road_widget.dart';
import 'package:onboarding/onboarding/widgets/images/tree_widget.dart';
import 'package:onboarding/onboarding/widgets/onboarding_item_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _pageController = PageController(initialPage: 0);
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // make dimens responsive as waht you use in your code
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff1f005c),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemCount: _items.length,
                  controller: _pageController,
                  itemBuilder: (context, index) => _items[index],
                ),
              ), // Indicator area
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        _items.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DotIndicator(
                            isActive: index == _pageIndex,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.cancel),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  final List<OnBoardingItemWidget> _items = const [
    OnBoardingItemWidget(
        title: 'Devices Screen', image: DevicesWidget(), desc: 'Desc'),
    OnBoardingItemWidget(
        title: 'Road Screen', image: RoadWidget(), desc: 'hello this is desc'),
    OnBoardingItemWidget(
        title: 'Tree Screen', image: TreeWidget(), desc: 'hello this is desc'),
  ];
}
