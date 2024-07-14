import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/Core/Utils/constant_colors.dart';
import 'Widgets/customed_floating_action_button.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      floatingActionButton: FadeInRightBig(child: const CustomedFloatingActionButton()),
      body: const HomeViewBody(),
    );
  }
}