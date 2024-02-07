import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'add-note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if(state is AddNoteFailure)
          {
            print('Failure ${state.errMessage}');
          }
          if (state is AddNoteSuccess)
          {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(child:  AddNoteForm()),
                )),
          );
        },
      ),
    );
  }
}
