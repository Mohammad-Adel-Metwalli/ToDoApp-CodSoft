import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:quiver/time.dart';
import 'days_list_view_items.dart';

class DaysListView extends StatefulWidget
{
  const DaysListView({super.key,});

  @override
  State<DaysListView> createState() => _DaysListViewState();
}

class _DaysListViewState extends State<DaysListView>
{
  ScrollController scrollController = ScrollController();
  int currentDayByIndex = 0;

  @override
  void initState()
  {
    super.initState();
    currentDayByIndex = DateTime.now().day - 1;
    WidgetsBinding.instance.addPostFrameCallback((_) => scrollToCurrentDate());
  }

  void scrollToCurrentDate()
  {
    double itemWidth = 72.w;
    double targetScrollOffset = currentDayByIndex * itemWidth;
    scrollController.animateTo(
      targetScrollOffset,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context)
  {
    List<int> totalDaysInMonth = List.generate(daysInMonth(DateTime.now().year, DateTime.now().month), (index) => index);

    return SizedBox(
      height: 120.h,
      width: double.infinity,
      child: ListView.builder(
        controller: scrollController,
        itemCount: totalDaysInMonth.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        itemBuilder: (context, index)
        {
          DateTime currentDate = DateTime(DateTime.now().year, DateTime.now().month, index + 1);
          String dayName = DateFormat('EEEE').format(currentDate);
          int dayNumber = totalDaysInMonth[index] + 1;

          return DaysListViewItems(dayName: dayName, dayNumber: dayNumber);
        },
      ),
    );
  }
}