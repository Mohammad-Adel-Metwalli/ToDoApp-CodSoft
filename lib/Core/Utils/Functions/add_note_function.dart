import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../../Feature/Home/Data/Repositories/Models/note_model.dart';
import '../constants.dart';

void addNoteFunction({required BuildContext context, required NoteModel noteModel}) async
{
  var allNotes = Hive.box<NoteModel>(notesBox);
  await allNotes.add(noteModel);
}