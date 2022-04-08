import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import '../../common/widgets/text_divider.dart';
import 'forgot_password_button.dart';

class AuthenScaffoldBody extends StatelessWidget {
  final Widget form;
  final Widget submitButton;
  final Widget? otherAuthenticateOptions;
  final Widget? otherOptions;
  final String title;
  final bool shouldShowForgotPasswordButton;
  final bool isLoading;

  const AuthenScaffoldBody({
    Key? key,
    required this.title,
    required this.form,
    required this.submitButton,
    this.otherAuthenticateOptions,
    this.otherOptions,
    this.shouldShowForgotPasswordButton = true,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth <= 500 ? screenWidth : 500;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/authentication/login_banner.png',
                width: imageWidth.toDouble(),
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 16),
            form,
            const SizedBox(height: 8),
            if (shouldShowForgotPasswordButton)
              ForgotPasswordButton(isDisabled: isLoading),
            const SizedBox(height: 8),
            submitButton,
            if (isLoading) ...[
              const SizedBox(height: 16),
              const LinearProgressIndicator(),
            ],
            const SizedBox(height: 24),
            if (otherAuthenticateOptions != null) ...[
              TextDivider(text: context.l10n.or.toUpperCase()),
              const SizedBox(height: 16),
              otherAuthenticateOptions!,
              const SizedBox(height: 8),
            ],
            if (otherOptions != null) otherOptions!
          ],
        ),
      ),
    );
  }
}
