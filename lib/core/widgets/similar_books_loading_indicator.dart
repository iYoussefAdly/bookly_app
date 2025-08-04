import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
class SimilarBooksLoadingIndicator extends StatelessWidget {
  const SimilarBooksLoadingIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16, // نفس ارتفاع الـ ListView اللي فوق
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return Shimmer(
            duration: const Duration(seconds: 2),
            interval: const Duration(seconds: 0),
            color: Colors.white,
            colorOpacity: 0.5,
            enabled: true,
            direction: const ShimmerDirection.fromLTRB(),
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          );
        },
      ),
    );
  }
}
