import 'package:flutter/material.dart';
import 'package:to_do_app/Core/Utils/constant_colors.dart';

class CustomedRoundCheckBox extends StatefulWidget
{
  const CustomedRoundCheckBox({super.key, this.onChanged, required this.isSelected,});
  final void Function(bool?)? onChanged;
  final bool isSelected;

  @override
  State<CustomedRoundCheckBox> createState() => _CustomedRoundCheckBoxState();
}

class _CustomedRoundCheckBoxState extends State<CustomedRoundCheckBox>
{
  @override
  Widget build(BuildContext context)
  {
    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
        value: widget.isSelected,
        onChanged: widget.onChanged,
        activeColor: widget.isSelected ? green : white,
      ),
    );
  }
}