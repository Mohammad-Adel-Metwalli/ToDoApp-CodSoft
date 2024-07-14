import 'package:flutter/material.dart';
import 'package:to_do_app/Core/Utils/Functions/important_tasks_function.dart';
import 'package:to_do_app/Core/Utils/Functions/personal_tasks_function.dart';
import '../../../../Core/Utils/Functions/finished_today_tasks_function.dart';
import 'package:to_do_app/Core/Utils/Functions/retrieve_today_tasks_function.dart';
import '../../../../Core/Utils/Functions/learning_tasks_function.dart';
import '../../../../Core/Utils/Functions/shopping_tasks_function.dart';
import '../../../../Core/Utils/Functions/upcoming_tasks_function.dart';
import '../../../../Core/Utils/Functions/work_tasks_function.dart';

class TasksNotifier extends ChangeNotifier
{
  int allTasksToday = retrieveTodayTasksFunction().length, allFinishedTasksToday = finishedTodayTasksFunction().length, allImportantTasks = importantTasksFunction().length, allUpcomingTasks = upcomingTasksFunction().length;
  int allPersonalTasks = personalTasksFunction().length, allWorkTasks = workTasksFunction().length, allLearningTasks = learningTasksFunction().length, allShoppingTasks = shoppingTasksFunction().length;

  allTasksTodayNotifier()
  {
    allTasksToday = retrieveTodayTasksFunction().length;
    notifyListeners();
  }

  allFinishedTasksTodayNotifier()
  {
    allFinishedTasksToday = finishedTodayTasksFunction().length;
    notifyListeners();
  }

  allImportantTasksNotifier()
  {
    allImportantTasks = importantTasksFunction().length;
    notifyListeners();
  }

  allUpcomingTasksNotifier()
  {
    allUpcomingTasks = upcomingTasksFunction().length;
    notifyListeners();
  }

  allPersonalTasksNotifier()
  {
    allPersonalTasks = personalTasksFunction().length;
    notifyListeners();
  }

  allWorkTasksNotifier()
  {
    allWorkTasks = workTasksFunction().length;
    notifyListeners();
  }

  allLearningTasksNotifier()
  {
    allLearningTasks = learningTasksFunction().length;
    notifyListeners();
  }

  allShoppingTasksNotifier()
  {
    allShoppingTasks = shoppingTasksFunction().length;
    notifyListeners();
  }
}