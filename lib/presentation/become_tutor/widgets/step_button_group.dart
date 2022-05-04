import '../../common.dart';

class StepButtonGroup extends StatelessWidget {
  final bool isNotFirstStep;
  final bool isCompleted;
  final bool isNotLastStep;
  final bool showLastStep;
  final VoidCallback? onStepCancel;
  final VoidCallback? onStepContinue;

  const StepButtonGroup({
    Key? key,
    required this.isNotFirstStep,
    required this.isNotLastStep,
    required this.isCompleted,
    required this.showLastStep,
    this.onStepContinue,
    this.onStepCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (isNotFirstStep &&
              !isCompleted &&
              !(!isNotLastStep && !showLastStep))
            OutlinedButton.icon(
              onPressed: onStepCancel,
              icon: const Icon(Icons.navigate_before),
              label: Text(context.l10n.previousStepButtonText),
            ),
          const Expanded(child: SizedBox()),
          if (isNotLastStep && !isCompleted)
            ElevatedButton.icon(
              onPressed: onStepContinue,
              icon: const Icon(Icons.navigate_next),
              label: Text(context.l10n.nextStepButtonLabel),
            ),
        ],
      ),
    );
  }
}
