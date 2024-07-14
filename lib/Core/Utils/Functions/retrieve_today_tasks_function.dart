import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import '../../../Feature/Home/Data/Repositories/Models/note_model.dart';
import '../constants.dart';

List<NoteModel> retrieveTodayTasksFunction()
{
  List<NoteModel> allNotes = Hive.box<NoteModel>(notesBox).values.toList();
  List<NoteModel> todayTasks = [];
  String today =  DateFormat('yyyy-MM-dd').format(DateTime.now());

  for(int i = 0; i < allNotes.length; i++)
  {
    if(allNotes[i].date == today)
    {
      todayTasks.add(allNotes[i]);
    }
  }

  return todayTasks;
}