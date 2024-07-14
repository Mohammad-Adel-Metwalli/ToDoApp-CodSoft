import 'package:flutter/material.dart';
import '../../../Feature/Home/Data/Repositories/Models/note_model.dart';

void editNoteFunction({required BuildContext context, required NoteModel oldNote, required NoteModel newNote}) async
{
  oldNote.title = newNote.title;
  oldNote.date = newNote.date;
  oldNote.subTitle = newNote.subTitle;
  oldNote.duration = newNote.duration;
  oldNote.color = newNote.color;
  oldNote.save();
}