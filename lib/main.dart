import 'Core/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:to_do_app/Core/Utils/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Feature/Home/Data/Repositories/Models/note_model.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';

void main() async
{
  initializeDateFormatting('en_US').then(( value) async
  {
    await Hive.initFlutter();
    Hive.registerAdapter(NoteModelAdapter());
    await Hive.openBox<NoteModel>(notesBox);
    runApp(const ToDoApp());
  });
}

class ToDoApp extends StatelessWidget
{
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TasksNotifier()),
      ],

      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        designSize: Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),

        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.ubuntuTextTheme()),
        ),
      ),
    );
  }
}