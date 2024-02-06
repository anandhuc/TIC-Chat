import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bloc/bloc.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_chat/infrastructure/common_functions.dart';

part 'dialog_flow_event.dart';
part 'dialog_flow_state.dart';
part 'dialog_flow_bloc.freezed.dart';

class DialogFlowBloc extends Bloc<DialogFlowEvent, DialogFlowState> {
  DialogFlowBloc() : super(DialogFlowState.initial()) {
    List<Map<String, dynamic>> messages = [];
    AssetsAudioPlayer player = AssetsAudioPlayer();
    on<SubmitQuery>((event, emit) async {
      messages.add({
        'message': event.query,
        'isUserMessage': true,
      });
      player.open(Audio('assets/audios/sent.mp3'));

      emit(state.copyWith(isError: false, isLoading: true, messages: messages));

      try {
        DialogAuthCredentials credentials =
            await DialogAuthCredentials.fromFile(
                'assets/dialog_flow_auth.json');
        final DialogFlowtter dialogFlowtter = DialogFlowtter(
          credentials: credentials,
          sessionId: generateUniqueChecksum(),
        );

        // DetectIntentResponse response = await dialogFlowtter.detectIntent(
        //   queryInput: queryInput,
        // );
        DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: event.query)),
        );

        String? textResponse = response.text;
        messages.add({
          'message': textResponse.toString(),
          'isUserMessage': false,
        });
        player.open(Audio('assets/audios/recive.mp3'));
        log(textResponse.toString()); // Hi, how may I help you?
        emit(state.copyWith(
            isError: false, isLoading: false, messages: messages));
      } catch (e) {
        log('error log    >>>  $e');
        emit(state.copyWith(
          isError: true,
          isLoading: false,
        ));
      }
    });
  }
}
