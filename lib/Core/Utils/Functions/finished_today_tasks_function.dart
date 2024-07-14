import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import '../../../Feature/Home/Data/Repositories/Models/note_model.dart';
import '../constants.dart';

List<NoteModel> finishedTodayTasksFunction()
{
  List<NoteModel> allNotes = Hive.box<NoteModel>(notesBox).values.toList();
  List<NoteModel> finishedTodayTasks = [];
  String today =  DateFormat('yyyy-MM-dd').format(DateTime.now());

  for(int i = 0; i < allNotes.length; i++)
  {
    if(allNotes[i].isDone == true && allNotes[i].date == today)
    {
      finishedTodayTasks.add(allNotes[i]);
    }
  }

  return finishedTodayTasks;
}