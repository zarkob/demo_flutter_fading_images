import 'dart:ui';

import 'package:demo_flutter_fading_images/fading_images_with_animated_switcher.dart';
import 'package:demo_flutter_fading_images/images_big_screen.dart';
import 'package:demo_flutter_fading_images/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/image_description_screen_model.dart';

class ImageDescriptionScreen extends StatelessWidget {
  static const String routeName = 'imageDescriptionScreen';

  const ImageDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 7,
            child: GestureDetector(
              onVerticalDragDown: (dragUpdateDetails) =>
                  Navigator.of(context).pushNamed(ImagesBigScreen.routeName),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                      tag: 'FadingImages',
                      child: FadingImagesWithAnimatedSwitcher()),
                ],
              ),
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
                            child: Consumer<ImageDescriptionScreenModel>(
                              builder: (BuildContext context, imageDescriptionScreenModel,
                                  Widget? child) {
                                return Text(
                                  Provider.of<ImageDescriptionScreenModel>(
                                          context,
                                          listen: false)
                                      .imageName,
                                  style:
                                      mainScreenPlatesTextStyleSmallMediumShadow,
                                  textAlign: TextAlign.center,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Consumer<ImageDescriptionScreenModel>(builder:
                  (BuildContext context, imageDescriptionScreenModel, Widget? child) {
                return Text(imageDescriptionScreenModel.imageDescription);
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageDescriptionScreenArguments {
  final String imageId;

  ImageDescriptionScreenArguments({required this.imageId});
}
