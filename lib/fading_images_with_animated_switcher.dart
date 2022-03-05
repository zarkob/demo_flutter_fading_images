import 'dart:async';

import 'package:demo_flutter_fading_images/images_stack.dart';
import 'package:demo_flutter_fading_images/models/image_description_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FadingImagesWithAnimatedSwitcher extends StatefulWidget {
  FadingImagesWithAnimatedSwitcher({Key? key}) : super(key: key);

  @override
  State<FadingImagesWithAnimatedSwitcher> createState() =>
      _FadingImagesWithAnimatedSwitcherState();
}

class _FadingImagesWithAnimatedSwitcherState
    extends State<FadingImagesWithAnimatedSwitcher> {
  Timer? timer;
  int _count = 0;
  String _imagePath = "";

  @override
  void initState() {
    super.initState();
    setImagePaths();
    timer = Timer.periodic(const Duration(seconds: 8), (timer) {
      updateWidgetAndChangeState();
    });
  }

  void setImagePaths(){
    this._imagePath = Provider.of<ImageDescriptionScreenModel>(context, listen: false).currentImagePath;
  }


  void updateWidgetAndChangeState() {

    if (mounted){
      Provider.of<ImageDescriptionScreenModel>(context, listen: false).updateCurrentImageIndexAndPath();
      setState(() {
        _imagePath = Provider.of<ImageDescriptionScreenModel>(context, listen: false).currentImagePath;
        _count += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(seconds: 3),
        child:
      ImagesStack(
          imagePath: _imagePath,
          // fit: BoxFit.fill,
          // This key causes the AnimatedSwitcher to interpret this as a "new"
          // child each time the count changes, so that it will begin its animation
          // when the count changes.
          key: ValueKey<int>(_count),
        )
    );
  }
}
