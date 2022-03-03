import '../common.dart';

import '../utils/default_app_bar.dart';
import 'widgets/widgets.dart';

class BecomeTutorPage extends StatefulWidget {
  const BecomeTutorPage({Key? key}) : super(key: key);

  @override
  State<BecomeTutorPage> createState() => _BecomeTutorPageState();
}

class _BecomeTutorPageState extends State<BecomeTutorPage> {
  int _index = 0;
  final _completedSteps = <int>{};
  final _isCompleted = false;

  static const _totalSteps = 3;

  Step buildStep1(BuildContext context) {
    const step1Index = 0;
    return Step(
      state: _completedSteps.contains(step1Index)
          ? StepState.complete
          : StepState.indexed,
      isActive: _index == step1Index,
      title: Text(
        // A bug that causes horizontal stepper overflows title
        // see https://github.com/flutter/flutter/issues/40601
        _index == step1Index
            ? AppLocalizations.of(context)!.completeProfileStepTitle
            : '',
      ),
      content: const BecomeTutorStep1(),
    );
  }

  Step buildStep2(BuildContext context) {
    const step2Index = 1;
    return Step(
      state: _completedSteps.contains(step2Index)
          ? StepState.complete
          : StepState.indexed,
      isActive: _index == step2Index,
      title: Text(
        _index == step2Index
            ? AppLocalizations.of(context)!.introductionVideoLabel
            : '',
      ),
      content: BecomeTutorStep2(),
    );
  }

  Step buildStep3(BuildContext context) {
    const step3Index = 2;
    return Step(
      state: _completedSteps.contains(step3Index)
          ? StepState.complete
          : StepState.indexed,
      isActive: _index == step3Index,
      title: Text(
        _index == step3Index
            ? AppLocalizations.of(context)!.approvalStepLabel
            : '',
      ),
      content: BecomeTutorStep3(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.becomeTeacherLabel,
        shouldShowDefaultActions: false,
      ),
      body: SafeArea(
        child: Stepper(
          physics: const ClampingScrollPhysics(),
          controlsBuilder: (BuildContext context, ControlsDetails details) {
            final isNotFirstStep = details.stepIndex != 0;
            final isNotLastStep = details.stepIndex != _totalSteps - 1;
            return StepButtonGroup(
              isNotFirstStep: isNotFirstStep,
              isNotLastStep: isNotLastStep,
              isCompleted: _isCompleted,
              onStepCancel: details.onStepCancel,
              onStepContinue: details.onStepContinue,
            );
          },
          type: StepperType.horizontal,
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
                _completedSteps.remove(_index);
              });
            }
          },
          onStepContinue: () {
            if (_index >= 0 && _index < _totalSteps - 1) {
              setState(() {
                _completedSteps.add(_index);
                _index += 1;
              });
            }
          },
          // onStepTapped: (int index) {
          //   setState(() {
          //     _index = index;
          //   });
          // },
          steps: [
            buildStep1(context),
            buildStep2(context),
            buildStep3(context),
          ],
        ),
      ),
    );
  }
}
