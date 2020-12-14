//Flutter Imports
import 'package:flutter/material.dart';
//Library Imports
import 'package:flutter_svg/svg.dart';
//Local Imports
import '../../app_theme.dart';
import '../../constants/resources.dart';
import '../../constants/strings.dart';
import '../../utils.dart';
import '../../screens/custom_widgets/animations/animated_slider.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController _pageController = PageController();
  int _pageIndex = 0;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(body: _body());
  }

  Widget _body() {
    return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            _scrollPicture(),
            SizedBox(height: 30),
            _dots(),
            SizedBox(height: 40),
            Text(findFood, style: AppTheme.textBodyAStyle),
            SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Text(discover,
                    textAlign: TextAlign.center,
                    style: AppTheme.textBodyBStyle)),
            SizedBox(height: 80),
            _nextButton()
          ],
        ));
  }

  Widget _scrollPicture() {
    return Container(
      height: screenHeight / 4,
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) => setState(() {
          _pageIndex = _pageController.page.round();
        }),
        children: [
          _svgPicture(onBorardA),
          _svgPicture(onBorardB),
          _svgPicture(onBorardC),
        ],
      ),
    );
  }

  Widget _dots() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
          backgroundColor:
              _pageIndex == 0 ? AppTheme.primaryColor : AppTheme.greyColor,
          radius: 5),
      SizedBox(width: 5),
      CircleAvatar(
          backgroundColor:
              _pageIndex == 1 ? AppTheme.primaryColor : AppTheme.greyColor,
          radius: 5),
      SizedBox(width: 5),
      CircleAvatar(
          backgroundColor:
              _pageIndex == 2 ? AppTheme.primaryColor : AppTheme.greyColor,
          radius: 5),
    ]);
  }

  Widget _svgPicture(svgPath) {
    return Container(
      alignment: Alignment.center,
      child: SvgPicture.asset(svgPath),
    );
  }

  Widget _nextButton() {
    return AnimatedSlider(
      milliseconds: 800,
      dx: -5.0,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 40),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: AppTheme.primaryColor),
        child: Text(next, style: AppTheme.textBodyCStyle),
      ),
    );
  }
}
