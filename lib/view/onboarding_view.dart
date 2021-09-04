import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import 'settings_view.dart';
import '../localizations/app_localizations.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _slides = [
      Slide(
        title: context.translate('account'),
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "assets/images/photo_eraser.png",
        backgroundColor: Color(0xfff5a623),
      ),
      Slide(
        title: context.translate('country'),
        description:
            "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/images/photo_pencil.png",
        backgroundColor: Color(0xff203152),
      ),
      Slide(
        title: context.translate('data_usage'),
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/photo_ruler.png",
        backgroundColor: Color(0xff9932CC),
      ),
    ];

    return IntroSlider(
      slides: _slides,
      onDonePress: () => _openSettingsView(context),
    );
  }

  void _openSettingsView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsView(),
      ),
    );
  }
}
