import '../../common.dart';
import '../../common/widgets/text_divider.dart';
import 'forgot_password_button.dart';

class AuthenScaffoldBodyDesktop extends StatelessWidget {
  final Widget form;
  final Widget submitButton;
  final Widget? otherAuthenticateOptions;
  final Widget? otherOptions;
  final String title;
  final bool shouldShowForgotPasswordButton;
  final bool isLoading;

  const AuthenScaffoldBodyDesktop({
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
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(itemSpacing),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: LayoutBuilder(
                builder: (_, constraint) => Center(
                  child: Image.asset(
                    'assets/images/authentication/login_banner.png',
                    width: constraint.biggest.shortestSide,
                    height: constraint.biggest.shortestSide,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 700),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
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
            ),
          ],
        ),
      ),
    );
  }
}
