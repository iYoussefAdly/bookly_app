import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          placeholder: (context, url) => Center(child: CircularProgressIndicator()),
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget:(context, url, error) => Icon(Icons.error) ,),
      )
    );
  }
}
