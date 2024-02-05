import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),),
      body: const NoteViewBody(),
    );
  }
}


  // appBar: AppBar(
        //   actions: const [],
        //   title: const Text('Notes'),
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        // ),
