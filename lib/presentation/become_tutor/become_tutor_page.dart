import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/become_tutor/become_tutor_bloc.dart';
import '../common.dart';
import '../common/utils/default_app_bar.dart';
import '../common/widgets/loading_widget.dart';
import 'widgets/widgets.dart';

class BecomeTutorPage extends StatelessWidget {
  const BecomeTutorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.becomeTeacherLabel,
        shouldShowDefaultActions: false,
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: BlocProvider<BecomeTutorBloc>(
          create: (_) => getIt<BecomeTutorBloc>()
            ..add(
              const BecomeTutorEvent.initialise(),
            ),
          child: const BecomeTutorBody(),
        ),
      ),
    );
  }
}

class BecomeTutorBody extends StatelessWidget {
  const BecomeTutorBody({Key? key}) : super(key: key);

  static const _totalSteps = 3;

  Step buildStep1(BuildContext context, BecomeTutorState state) {
    const step1Index = 0;
    return Step(
      state: state.completedSteps.contains(step1Index)
          ? StepState.complete
          : StepState.indexed,
      isActive: state.currentStepIndex == step1Index,
      title: Text(
        // A bug that causes horizontal stepper overflows title
        // see https://github.com/flutter/flutter/issues/40601
        state.currentStepIndex == step1Index
            ? context.l10n.completeProfileStepTitle
            : '',
      ),
      content: const BecomeTutorStep1(),
    );
  }

  Step buildStep2(BuildContext context, BecomeTutorState state) {
    const step2Index = 1;
    return Step(
      state: state.completedSteps.contains(step2Index)
          ? StepState.complete
          : StepState.indexed,
      isActive: state.currentStepIndex == step2Index,
      title: Text(
        state.currentStepIndex == step2Index
            ? context.l10n.introductionVideoLabel
            : '',
      ),
      content: const BecomeTutorStep2(),
    );
  }

  Step buildStep3(BuildContext context, BecomeTutorState state) {
    const step3Index = 2;
    return Step(
      state: state.completedSteps.contains(step3Index)
          ? StepState.complete
          : StepState.indexed,
      isActive: state.currentStepIndex == step3Index,
      title: Text(
        state.currentStepIndex == step3Index
            ? context.l10n.approvalStepLabel
            : '',
      ),
      content: const BecomeTutorStep3(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BecomeTutorBloc, BecomeTutorState>(
      listenWhen: (previous, current) {
        return previous.isLoading != current.isLoading ||
            previous.registerSucceedOrFailed != current.registerSucceedOrFailed;
      },
      listener: (context, state) {},
      builder: (context, state) {
        final breakpoint = Breakpoint.fromMediaQuery(context);
        if (state.isInitialising) {
          return const LoadingWidget();
        }

        return Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: breakpoint.window >= WindowSize.medium
                ? const BoxConstraints(maxWidth: 800)
                : const BoxConstraints(),
            child: Stepper(
              // physics: const NeverScrollableScrollPhysics(),
              controlsBuilder: (BuildContext context, ControlsDetails details) {
                final isNotFirstStep = details.stepIndex != 0;
                final isNotLastStep = details.stepIndex != _totalSteps - 1;
                return StepButtonGroup(
                  isNotFirstStep: isNotFirstStep,
                  isNotLastStep: isNotLastStep,
                  isCompleted: false,
                  showLastStep: false,
                  onStepCancel: details.onStepCancel,
                  onStepContinue: details.onStepContinue,
                );
              },
              type: breakpoint.window >= WindowSize.medium
                  ? StepperType.vertical
                  : StepperType.horizontal,
              currentStep: state.currentStepIndex,
              onStepCancel: () {
                context.read<BecomeTutorBloc>().add(
                      const BecomeTutorEvent.previousStepButtonPressed(),
                    );
              },
              onStepContinue: () {
                context.read<BecomeTutorBloc>().add(
                      const BecomeTutorEvent.nextStepButtonPressed(),
                    );
              },
              steps: [
                buildStep1(context, state),
                buildStep2(context, state),
                buildStep3(context, state),
              ],
            ),
          ),
        );
      },
    );
  }
}
