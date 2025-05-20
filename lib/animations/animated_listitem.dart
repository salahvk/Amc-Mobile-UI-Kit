import 'package:amc_ui_kit/amc_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class AnimatedListItem extends StatelessWidget {
  final int index;
  final Widget child;
  final Duration duration;
  final double verticalOffset;

  const AnimatedListItem({
    super.key,
    required this.index,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.verticalOffset = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: duration,
      child: SlideAnimation(
        verticalOffset: verticalOffset,
        child: FadeInAnimation(
          child: FadeTransitionWidget(
            child: child,
          ),
        ),
      ),
    );
  }
}
