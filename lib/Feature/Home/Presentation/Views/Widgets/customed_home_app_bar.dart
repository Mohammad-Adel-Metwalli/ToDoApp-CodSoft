import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_bar_lower_section.dart';
import 'app_bar_upper_section.dart';

class CustomedHomeAppBar extends StatelessWidget
{
  const CustomedHomeAppBar({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppBarUpperSection(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.0125),

        const AppBarLowerSection(),
      ],
    );
  }
}