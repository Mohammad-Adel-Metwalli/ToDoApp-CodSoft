import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Core/Utils/Functions/edit_note_function.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';
import 'package:to_do_app/Feature/Home/Presentation/Views/Widgets/title_field.dart';
import 'package:to_do_app/Feature/Home/Presentation/Views/Widgets/to_time_picker.dart';
import 'package:to_do_app/Feature/Tasks/Presentation/Views/Widgets/edit_note_button.dart';
import '../../../../../Core/Utils/Functions/add_note_function.dart';
import '../../../../../Core/Widgets/customed_snack_bar.dart';
import '../../../Data/Repositories/Models/note_model.dart';
import 'add_note_button.dart';
import 'choose_important_widgets.dart';
import 'colors_list.dart';
import 'customed_widget.dart';
import 'date_picking.dart';
import 'from_time_picker.dart';

class BottomSheetBodyItems extends StatefulWidget
{
  const BottomSheetBodyItems({super.key, required this.type, required this.note,});
  final NoteModel note;
  final String type;

  @override
  State<BottomSheetBodyItems> createState() => _BottomSheetBodyItemsState();
}

class _BottomSheetBodyItemsState extends State<BottomSheetBodyItems>
{
  NoteModel noteModel = NoteModel(title: '', subTitle: '', duration: '', date: '', color: -1, isImportant: false, isDone: false);
  GlobalKey<FormState> formKey = GlobalKey();
  String fromDate = '', toDate = '';

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: formKey,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              const CustomedWidget(),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              TitleField(onChanged: (data) => noteModel.title = data),

              DatePicking(onChanged: (data) => noteModel.date = data),

              FromTimePicker(onChanged: (data) => fromDate = data),

              ToTimePicker(onChanged: (data) => toDate = data),

              ChooseImportantWidgets(noteModel: noteModel),

              ColorsList(noteModel: noteModel),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),

              Consumer<TasksNotifier>(
                builder: (context, notifier, child) => widget.type == '' ? AddNoteButton(
                  onPressed: () async
                  {
                    if(formKey.currentState!.validate())
                    {
                      noteModel.duration = '$fromDate - $toDate';
                      noteModel.isImportant = false;
                      noteModel.isDone = false;
                      addNoteFunction(context: context, noteModel: noteModel);
                      notifier.allTasksTodayNotifier();
                      notifier.allFinishedTasksTodayNotifier();
                      notifier.allUpcomingTasksNotifier();
                      notifier.allImportantTasksNotifier();
                      notifier.allPersonalTasksNotifier();
                      notifier.allWorkTasksNotifier();
                      notifier.allLearningTasksNotifier();
                      notifier.allShoppingTasksNotifier();

                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(customedSnackBar(context: context, type: 'Success', modify: false));
                    }

                    else
                    {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(customedSnackBar(context: context, type: 'Failure', modify: false));
                    }
                  },
                ) : EditNoteButton(
                  onPressed: () async
                  {
                    if(formKey.currentState!.validate())
                    {
                      noteModel.duration = '$fromDate - $toDate';
                      noteModel.isImportant = false;
                      noteModel.isDone = false;
                      editNoteFunction(context: context, oldNote: widget.note, newNote: noteModel);
                      notifier.allTasksTodayNotifier();
                      notifier.allFinishedTasksTodayNotifier();
                      notifier.allUpcomingTasksNotifier();
                      notifier.allImportantTasksNotifier();
                      notifier.allPersonalTasksNotifier();
                      notifier.allWorkTasksNotifier();
                      notifier.allLearningTasksNotifier();
                      notifier.allShoppingTasksNotifier();

                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(customedSnackBar(context: context, type: 'Success', modify: true));
                    }

                    else
                    {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(customedSnackBar(context: context, type: 'Failure', modify: true));
                    }
                  },
                ),
              ),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}