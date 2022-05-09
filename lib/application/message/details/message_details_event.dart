part of 'message_details_bloc.dart';

@freezed
class MessageDetailsEvent with _$MessageDetailsEvent {
  const factory MessageDetailsEvent.initialise() = _Initialise;

  const factory MessageDetailsEvent.textChanged(String text) = _TextChanged;

  const factory MessageDetailsEvent.textSubmitted() = _TextSubmitted;

  const factory MessageDetailsEvent.partnerChanged(PartnerInfo? partnerInfo) =
      _PartnerChanged;
}
