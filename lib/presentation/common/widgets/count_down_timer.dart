import 'dart:async';

import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  final DateTime endTime;
  final Widget Function(BuildContext context, Duration timeRemaining) builder;
  final Duration Function()? durationBuilder;
  final String tag;

  const CountDownTimer({
    Key? key,
    required this.endTime,
    required this.builder,
    this.tag = '',
    this.durationBuilder,
  }) : super(key: key);

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (DateTime.now().isAfter(widget.endTime)) {
          _timer.cancel();
        }
        setState(() {});
        // log('CountDownTimer - tag: {${widget.tag}}');
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.durationBuilder == null) {
      final now = DateTime.now();
      return widget.builder.call(
        context,
        now.isAfter(widget.endTime)
            ? Duration.zero
            : widget.endTime.difference(now),
      );
    } else {
      return widget.builder.call(
        context,
        widget.durationBuilder!.call(),
      );
    }
  }
}
