import 'package:flutter/material.dart';
import 'customed_grid_view_item.dart';

class CustomedGridView extends StatelessWidget
{
  const CustomedGridView({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.6,
      width: double.infinity,
      child: GridView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(20),
          child: CustomedGridViewItem(index: index),
        ),
      ),
    );
  }
}