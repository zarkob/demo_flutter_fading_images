import 'dart:ui';

import 'package:demo_flutter_fading_images/fading_images_with_animated_switcher.dart';
import 'package:demo_flutter_fading_images/models/image_description_screen_model.dart';
import 'package:demo_flutter_fading_images/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IconBigScreen extends StatelessWidget {
  static const String routeName = 'iconBigScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 14,
            child: Center(
              child: Hero(
                  tag: 'FadingImages', child: FadingImagesWithAnimatedSwitcher()),
            ),
          ),
          Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                height: 5,
                child: Container(
                  decoration: mainScreenPlatesBoxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: SingleChildScrollView(
                            child: Text(
                              Provider.of<ImageDescriptionScreenModel>(context, listen:false).imageName,
                                style:
                                    mainScreenPlatesTextStyleSmallMediumShadow,
                                textAlign: TextAlign.center,
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
