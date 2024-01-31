import 'package:flutter/material.dart';

class FeedScrollPhysics extends ScrollPhysics {
  const FeedScrollPhysics({ScrollPhysics? parent})
      : super(parent: parent);

  @override
  FeedScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return FeedScrollPhysics(parent: buildParent(ancestor)!);
  }

  @override
  SpringDescription get spring => SpringDescription.withDampingRatio(
    mass: 0.1,
    stiffness: 100.0,
    ratio: 1.1,
  );
}
