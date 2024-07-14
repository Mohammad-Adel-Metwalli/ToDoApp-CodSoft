import 'package:hive/hive.dart';
import '../../../Feature/Home/Data/Repositories/Models/note_model.dart';
import '../constants.dart';

List<NoteModel> importantTasksFunction()
{
  List<NoteModel> allNotes = Hive.box<NoteModel>(notesBox).values.toList();
  List<NoteModel> importantTasks = [];

  for(int i = 0; i < allNotes.length; i++)
  {
    if(allNotes[i].isImportant == true)
    {
      importantTasks.add(allNotes[i]);
    }
  }

  return importantTasks;
}