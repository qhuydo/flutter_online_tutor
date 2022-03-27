import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushBarUtils {
  /// Get a success notification flushbar.
  static Flushbar createSuccess({
    required String message,
    String? title,
    Duration duration = const Duration(seconds: 3),
  }) {
    return Flushbar(
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      title: title,
      message: message,
      icon: Icon(
        Icons.check_circle,
        color: Colors.green[300],
      ),
      leftBarIndicatorColor: Colors.green[300],
      duration: duration,
    );
  }

  /// Get an information notification flushbar
  static Flushbar createInformation({
    required String message,
    String? title,
    Duration duration = const Duration(seconds: 3),
  }) {
    return Flushbar(
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      title: title,
      message: message,
      icon: Icon(
        Icons.info_outline,
        size: 28.0,
        color: Colors.blue[300],
      ),
      leftBarIndicatorColor: Colors.blue[300],
      duration: duration,
    );
  }

  /// Get a error notification flushbar
  static Flushbar createError({
    required String message,
    String? title,
    Duration duration = const Duration(seconds: 3),
  }) {
    return Flushbar(
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      title: title,
      message: message,
      icon: const Icon(
        Icons.warning,
        size: 28.0,
        color: Colors.white,
      ),
      // leftBarIndicatorColor: Colors.red[300],
      backgroundColor: Colors.red,
      boxShadows: [
        BoxShadow(
          color: Colors.red[800]!,
          offset: const Offset(0.0, 2.0),
          blurRadius: 3.0,
        )
      ],
      duration: duration,
    );
  }

  /// Get a flushbar that can receive a user action through a button.
  static Flushbar createAction({
    required String message,
    required Widget button,
    String? title,
    Duration duration = const Duration(seconds: 3),
  }) {
    return Flushbar(
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      title: title,
      message: message,
      duration: duration,
      mainButton: button,
    );
  }
}
