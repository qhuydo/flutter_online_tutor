import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twemoji/twemoji.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../../application/authentication/sign_up/sign_up_bloc.dart';
import '../../../domain/common/constants/countries.dart';
import '../../../domain/common/models/country.dart';
import '../../common.dart';
import '../l10n/failure_display_texts.dart';
import '../utils/string_utils.dart';

typedef PhoneNumberInputOnSelected = void Function(
  Country country,
  String number,
);

class PhoneNumberInput extends StatefulWidget {
  final FormFieldValidator<String>? validator;
  final PhoneNumberInputOnSelected? onChanged;
  final bool isEnabled;

  const PhoneNumberInput({
    Key? key,
    this.validator,
    this.onChanged,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();

  factory PhoneNumberInput.withLoginBloc({
    required BuildContext context,
    isEnabled = true,
  }) =>
      PhoneNumberInput(
        isEnabled: isEnabled,
        onChanged: (country, number) => context
            .read<LoginBloc>()
            .add(LoginEvent.phoneNumberChanged(country, number)),
        validator: (_) =>
            context.watch<LoginBloc>().state.phoneNumber.value.fold(
                  (f) => f.toText(context),
                  (_) => null,
                ),
      );

  factory PhoneNumberInput.withSignUpBloc({
    required BuildContext context,
    isEnabled = true,
  }) =>
      PhoneNumberInput(
        isEnabled: isEnabled,
        onChanged: (country, number) => context
            .read<SignUpBloc>()
            .add(SignUpEvent.phoneNumberChanged(country, number)),
        validator: (_) =>
            context.watch<SignUpBloc>().state.phoneNumber.value.fold(
                  (f) => f.toText(context),
                  (_) => null,
                ),
      );
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  Country currentCountry = countryMap['VN']!;
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: PopupMenuButton<Country>(
            initialValue: currentCountry,
            enabled: widget.isEnabled,
            onSelected: (value) {
              setState(() {
                currentCountry = value;
                widget.onChanged?.call(currentCountry, phoneNumber);
              });
            },
            child: Container(
              color: Theme.of(context).inputDecorationTheme.fillColor,
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                shape: RoundedRectangleBorder(
                  side: Theme.of(context)
                      .inputDecorationTheme
                      .enabledBorder!
                      .borderSide,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                leading: Twemoji(
                  emoji: currentCountry.isoCode.toCountryFlagFromCountryCode(),
                ),
                title: Text(currentCountry.dialCode),
              ),
            ),
            itemBuilder: (context) {
              return countryMap.values
                  .map(
                    (value) => PopupMenuItem<Country>(
                      value: value,
                      child: ListTile(
                        leading: Twemoji(
                          emoji: value.isoCode.toCountryFlagFromCountryCode(),
                        ),
                        title: Text(value.name),
                        subtitle: Text(value.dialCode),
                        selected: value == currentCountry,
                        trailing: value == currentCountry
                            ? const Icon(Icons.check)
                            : null,
                      ),
                    ),
                  )
                  .toList();
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 4,
          child: TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: context.l10n.phoneNumberLabel,
              hintText: context.l10n.phoneNumberTextBoxHint,
              border: const OutlineInputBorder(),
            ),
            onChanged: (value) {
              phoneNumber = value;
              widget.onChanged?.call(currentCountry, phoneNumber);
            },
            validator: widget.validator,
            enabled: widget.isEnabled,
          ),
        ),
      ],
    );
  }
}
