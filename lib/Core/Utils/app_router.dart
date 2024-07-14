import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/Core/Utils/constants.dart';
import '../../Feature/Home/Presentation/Views/home_view.dart';
import '../../Feature/Tasks/Presentation/Views/tasks_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),

      GoRoute(
        path: tasksViewPath,
        builder: (context, state) => FadeIn(child: TasksView(titleAndNotes: state.extra as Map<dynamic, dynamic>)),
      ),
    ],
  );
}