import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Container(
            height: 160,
            padding: const EdgeInsets.all(16),
            child: Shimmer(
              duration: const Duration(seconds: 2),
              interval: const Duration(seconds: 0),
              color: Colors.white,
              colorOpacity: 0.5,
              enabled: true,
              direction: const ShimmerDirection.fromLTRB(),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: double.infinity,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: double.infinity,
                          color: Colors.grey[300],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 14,
                          width: 100,
                          color: Colors.grey[300],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 20,
                              color: Colors.grey[300],
                            ),
                            const Spacer(),
                            Container(
                              width: 80,
                              height: 20,
                              color: Colors.grey[300],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
