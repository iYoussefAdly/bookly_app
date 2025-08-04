import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageOfTheItem extends StatelessWidget {
  const ImageOfTheItem({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: imageUrl != null
          ? CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: imageUrl!,
              errorWidget: (context, url, error) => Container(
                color: Colors.grey[300],
                child: Icon(
                  Icons.book,
                  size: 50,
                  color: Colors.grey[600],
                ),
              ),
            )
          : Container(
              color: Colors.grey[300],
              child: Icon(
                Icons.book,
                size: 50,
                color: Colors.grey[600],
              ),
            ),
    );
  }
}
