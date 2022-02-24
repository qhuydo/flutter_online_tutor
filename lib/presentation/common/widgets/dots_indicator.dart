// Copyright 2017, the Flutter project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

/// An indicator showing the currently selected page of a PageController
///
/// https://gist.github.com/collinjackson/4fddbfa2830ea3ac033e34622f278824
class DotsIndicator extends AnimatedWidget {
  const DotsIndicator({
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
    this.color = Colors.white,
    Key? key,
  }) : super(listenable: controller, key: key);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 24.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 -
            ((controller.page ?? controller.initialPage) % itemCount -
                    index % itemCount)
                .abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return SizedBox(
      width: _kDotSpacing,
      height: _kDotSize * _kMaxZoom,
      child: Center(
        child: Material(
          color: color,
          type: MaterialType.circle,
          child: SizedBox(
            width: _kDotSize * zoom,
            // width: _kDotSize * zoom * 1.25,
            height: _kDotSize * zoom,
            child: InkWell(
              onTap: () => onPageSelected(index % itemCount),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, _buildDot),
    );
  }
}
