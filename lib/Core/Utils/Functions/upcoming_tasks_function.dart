import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import '../../../Feature/Home/Data/Repositories/Models/note_model.dart';
import '../constants.dart';

List<NoteModel> upcomingTasksFunction()
{
  List<NoteModel> allNotes = Hive.box<NoteModel>(notesBox).values.toList();
  String today =  DateFormat('yyyy-MM-dd').format(DateTime.now());
  DateTime currentDate = DateTime.parse(today);
  List<NoteModel> upcomingTasks = [];

  for(int i = 0; i < allNotes.length; i++)
  {
    if(DateTime.parse(allNotes[i].date).isAfter(currentDate))
    {
      upcomingTasks.add(allNotes[i]);
    }
  }

  return upcomingTasks;
}