import 'dart:ui';

import 'package:demo_flutter_fading_images/themes/style.dart';
import 'package:flutter/material.dart';


class ImagesStack extends StatefulWidget {
  final String imagePath;

  const ImagesStack({required Key key, required this.imagePath}) : super(key: key);

  @override
  State<ImagesStack> createState() => _ImagesStackState();
}

class _ImagesStackState extends State<ImagesStack> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: <Widget>[
        ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: 6,
            sigmaY: 6,
          ),
          child: Container(
            // constraints: const BoxConstraints.expand(),
            constraints: BoxConstraints.tight(const Size(360, 500)),
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage(widget.imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          decoration: frontImageBoxDecoration,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ]),
    );
  }
}
