
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey <FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 32,),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate())
              {
                formkey.currentState!.save();
              }
              else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(height: 32,)
        ],
      ),
    );
  }
}
