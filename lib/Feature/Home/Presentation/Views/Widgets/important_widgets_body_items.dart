import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customed_list_tile.dart';

class ImportantWidgetsBodyItems extends StatelessWidget
{
  const ImportantWidgetsBodyItems({super.key, required this.icon, required this.title, required this.subTitle,});
  final String title, subTitle;
  final Widget icon;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),

        icon,

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),

        CustomedListTile(title: title, subTitle: subTitle),
      ],
    );
  }
}