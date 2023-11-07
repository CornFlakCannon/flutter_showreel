import 'package:flutter/material.dart';
import 'package:flutter_showreel/structs/image_route.dart';

class GalleryRoute extends StatelessWidget {
  final ImageRoute imageRoute;
  const GalleryRoute(this.imageRoute);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            imageRoute.image,
            imageRoute.route,
          ],
        ),
      ),
    );
  }
}
