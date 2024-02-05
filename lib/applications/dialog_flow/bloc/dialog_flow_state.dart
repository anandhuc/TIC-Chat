part of 'dialog_flow_bloc.dart';

@freezed
class DialogFlowState with _$DialogFlowState {
  factory DialogFlowState(
      {required bool isLoading,
      required bool isError,
      required List<Map<String, dynamic>> messages}) = _AmcBlocState;
  factory DialogFlowState.initial() {
    return DialogFlowState(isError: false, isLoading: false, messages: []);
  }
}
