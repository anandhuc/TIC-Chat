import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:tic_chat/applications/dialog_flow/bloc/dialog_flow_bloc.dart';

class ScreenChat extends StatelessWidget {
  ScreenChat({super.key});
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    });
    return Scaffold(
      extendBody: false,
      backgroundColor: const Color.fromARGB(255, 9, 20, 26),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 55, 65),
        centerTitle: true,
        title: const Text(
          'Tic Chat',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<DialogFlowBloc, DialogFlowState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                state.messages.isEmpty
                    ? Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset('assets/lotties/main.json'),
                          ],
                        ),
                      )
                    : Expanded(
                        child: ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            itemBuilder: (context, index) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: state.messages[index]
                                          ['isUserMessage']
                                      ? MainAxisAlignment.end
                                      : MainAxisAlignment.start,
                                  children: [
                                    state.messages[index]['isUserMessage']
                                        ? const SizedBox()
                                        : CircleAvatar(
                                            radius: 15,
                                            backgroundImage: AssetImage(state
                                                        .messages[index]
                                                    ['isUserMessage']
                                                ? 'assets/images/7309681.jpg'
                                                : 'assets/images/favicon.png'),
                                          ),
                                    state.messages[index]['isUserMessage']
                                        ? const SizedBox()
                                        : const SizedBox(
                                            width: 5,
                                          ),
                                    Container(
                                      constraints: BoxConstraints(
                                          maxWidth: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color.fromARGB(
                                              255, 31, 44, 52)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        child: Text(
                                          state.messages[index]['message'],
                                          style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    state.messages[index]['isUserMessage']
                                        ? const SizedBox(
                                            width: 5,
                                          )
                                        : const SizedBox(),
                                    state.messages[index]['isUserMessage']
                                        ? const CircleAvatar(
                                            radius: 15,
                                            backgroundImage: AssetImage(
                                                'assets/images/7309681.jpg'),
                                          )
                                        : const SizedBox()
                                  ],
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .015,
                                ),
                            itemCount: state.messages.length)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 31, 44, 52)),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _controller,
                          maxLines: 5,
                          minLines: 1,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(8),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(16)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(16)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(16))),
                        ),
                      )),
                      const SizedBox(
                        width: 5,
                      ),
                      BlocBuilder<DialogFlowBloc, DialogFlowState>(
                        builder: (context, state) {
                          return CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromARGB(255, 0, 141, 77),
                            child: state.isLoading
                                ? SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 1.5,
                                      backgroundColor: Colors.transparent,
                                      strokeAlign: CircularProgressIndicator
                                          .strokeAlignInside,
                                    ),
                                  )
                                : IconButton(
                                    onPressed: () {
                                      BlocProvider.of<DialogFlowBloc>(context)
                                          .add(SubmitQuery(
                                              query:
                                                  _controller.text.toString()));
                                      _controller.clear();
                                    },
                                    icon: const Icon(Icons.send_rounded,
                                        color: Colors.white)),
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
