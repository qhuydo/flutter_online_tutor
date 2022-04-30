import 'dart:async';

import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  final DateTime endTime;
  final Widget Function(BuildContext context, Duration timeRemaining) builder;

  const CountDownTimer({
    Key? key,
    required this.endTime,
    required this.builder,
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
        setState(() {});
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
    return widget.builder.call(
      context,
      widget.endTime.difference(DateTime.now()),
    );
  }
}
