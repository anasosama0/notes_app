import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import '../../constants.dart';
part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> notes = notesBox.values.toList();
      emit(NoteSuccess(notes));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
