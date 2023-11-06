import 'package:flutter/material.dart';

class GalleryButtons extends StatelessWidget {
  const GalleryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 100, right: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: 150,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(ImagePath),
            Text(
              Content,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
