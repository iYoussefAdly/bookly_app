import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class ImageOfTheItem extends StatelessWidget {
  const ImageOfTheItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsData.staticImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
