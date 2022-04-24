// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// A pair of values. Used for testing custom codecs.
class Pair<T, U> {
  Pair(this.left, this.right);

  final T left;
  final U right;

  @override
  String toString() => 'Pair[$left, $right]';
}