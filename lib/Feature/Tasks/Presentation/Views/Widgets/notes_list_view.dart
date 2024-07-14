import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/Home/Data/Repositories/Models/note_model.dart';
import 'notes_list_view_items.dart';

class NotesListView extends StatefulWidget
{
  const NotesListView({super.key, required this.allNotes,});
  final List<NoteModel> allNotes;

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView>
{
  @override
  Widget build(BuildContext context)
  {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.allNotes.length,
        itemBuilder: (context, index) => NotesListViewItems(allNotes: widget.allNotes, index: index),
      ),
    );
  }
}