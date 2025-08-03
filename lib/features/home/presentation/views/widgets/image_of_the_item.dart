import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class ImageOfTheItem extends StatelessWidget {
  const ImageOfTheItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: imageUrl),
    );
  }
}
