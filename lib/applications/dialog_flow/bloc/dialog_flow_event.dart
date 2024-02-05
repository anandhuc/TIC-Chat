part of 'dialog_flow_bloc.dart';

@freezed
class DialogFlowEvent with _$DialogFlowEvent {
  const factory DialogFlowEvent.submitQuery({required String query}) =
      SubmitQuery;
}
