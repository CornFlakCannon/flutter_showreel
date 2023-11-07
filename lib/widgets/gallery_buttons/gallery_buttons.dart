import 'package:flutter/material.dart';
import 'package:flutter_showreel/structs/image_route.dart';
import 'package:flutter_showreel/views/testpages/gallery_route_1/gallery_route_1.dart';

class GalleryButtons extends StatelessWidget {
  const GalleryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1500),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: _GalleryButton(
                  "How To Apply", "assets/gallerybuttonimage.png")),
          Expanded(
              child: _GalleryButton(
                  "Search Sites", "assets/gallerybuttonimage.png")),
          Expanded(
              child: _GalleryButton(
                  "Funding Programs", "assets/gallerybuttonimage.png")),
          Expanded(
              child: _GalleryButton(
                  "Help Articles", "assets/gallerybuttonimage.png")),
        ],
      ),
    );
  }
}

class _GalleryButton extends StatelessWidget {
  final String ImagePath;
  final String Content;
  const _GalleryButton(this.Content, this.ImagePath);

  @override
  Widget build(BuildContext context) {
    var imageRoute =
        ImageRoute(Image.asset(ImagePath), _imageDescription(Content));

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        child: Stack(children: [
          Image.asset(ImagePath),
          Text(
            Content,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ]),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GalleryRoute(imageRoute)));
        },
      ),
    );
  }
}

class _imageDescription extends StatelessWidget {
  final String description;
  const _imageDescription(this.description);

  @override
  Widget build(BuildContext context) {
    //Center is already in the detination route
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: [
          Text(description),
        ],
      ),
    );
  }
}
