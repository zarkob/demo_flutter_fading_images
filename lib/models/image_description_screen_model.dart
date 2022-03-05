import 'package:flutter/foundation.dart';

class ImageDescriptionScreenModel extends ChangeNotifier {
  final List<String> _imagesPaths = <String>[
    "assets/images/image(1).jpg",
    "assets/images/image(2).jpg",
    "assets/images/image(3).jpg",
    "assets/images/image(4).jpg"
  ];

  String _imageName = '';
  String _imageDescription = '';
  String _currentImagePath = "assets/images/image (1).jpg";
  int _currentImageIndex = 0;

  //constructor
  ImageDescriptionScreenModel({imageId}) {
    init(imageId);
  }

  //currentImagePath
  String get currentImagePath => _currentImagePath;

  //currentImageIndex
  int get currentImageIndex => _currentImageIndex;

  //imageName
  String get imageName => _imageName;

  set imageName(String value) {
    _imageName = value;
    notifyListeners();
  }


  String get imageDescription => _imageDescription;

  set imageDescription(String value) {
    _imageDescription = value;
    notifyListeners();
  }

  //imagesPaths
  List<String> get imagesPaths => _imagesPaths;

  set imagesPaths(List<String> value) {
    _imagesPaths.addAll(value);
    notifyListeners();
  }

  deleteImagesPaths() {
    _imagesPaths.clear();
    _currentImagePath = '';
    notifyListeners();
  }

  updateCurrentImageIndexAndPath() {
    if (currentImageIndex + 1 < imagesPaths.length) {
      _currentImageIndex = currentImageIndex + 1;
    } else {
      _currentImageIndex = 0;
    }
    _currentImagePath = imagesPaths[currentImageIndex];
    notifyListeners();
  }

  init(String imageId) {
    int i = 0;

    _currentImagePath = imagesPaths[0];
    _currentImageIndex = 0;
    imageName = "test";
    imageDescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suspendisse faucibus interdum posuere lorem ipsum dolor. Ullamcorper dignissim cras tincidunt lobortis. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Diam vulputate ut pharetra sit amet aliquam id. At risus viverra adipiscing at in tellus integer. Integer vitae justo eget magna fermentum iaculis. Id venenatis a condimentum vitae. Eget gravida cum sociis natoque penatibus et. Eleifend donec pretium vulputate sapien nec sagittis aliquam. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Urna duis convallis convallis tellus id interdum velit laoreet. Sed risus ultricies tristique nulla aliquet enim. Duis ultricies lacus sed turpis tincidunt id. Enim nulla aliquet porttitor lacus luctus. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Id venenatis a condimentum vitae sapien pellentesque habitant morbi.Mauris rhoncus aenean vel elit scelerisque mauris. Lorem donec massa sapien faucibus. Nulla porttitor massa id neque aliquam vestibulum morbi blandit cursus. Lacus vel facilisis volutpat est velit. Ultrices vitae auctor eu augue ut. Bibendum enim facilisis gravida neque convallis a. At auctor urna nunc id cursus. In cursus turpis massa tincidunt dui ut ornare lectus. Imperdiet dui accumsan sit amet nulla. Dui id ornare arcu odio ut. Cras sed felis eget velit aliquet sagittis. Elementum sagittis vitae et leo duis ut diam quam nulla. Imperdiet sed euismod nisi porta. Sit amet commodo nulla facilisi nullam vehicula ipsum a.";
  }
}
