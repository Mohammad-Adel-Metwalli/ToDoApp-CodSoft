import 'package:hive/hive.dart';
import '../../../Feature/Home/Data/Repositories/Models/note_model.dart';
import '../constants.dart';

List<NoteModel> personalTasksFunction()
{
  List<NoteModel> allNotes = Hive.box<NoteModel>(notesBox).values.toList();
  List<NoteModel> tasks = [];

  for(int i = 0; i < allNotes.length; i++)
  {
    if(allNotes[i].subTitle == 'Personal')
    {
      tasks.add(allNotes[i]);
    }
  }

  return tasks;
}