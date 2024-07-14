import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/Home/Data/Repositories/Models/note_model.dart';
import 'colors_list_item.dart';

class ColorsList extends StatefulWidget
{
  const ColorsList({super.key, required this.noteModel,});
  final NoteModel noteModel;

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList>
{
  int chosenColorIndex = -1;

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) => GestureDetector(
            onTap: ()
            {
              chosenColorIndex = index;
              widget.noteModel.color = index;
              setState(() {});
            },
            child: ColorsListItem(index: index, noteModel: widget.noteModel, chosenColorIndex: chosenColorIndex)),
        ),
      ),
    );
  }
}