import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class FromTimePicker extends StatelessWidget
{
  const FromTimePicker({super.key, this.onChanged,});
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DateTimePicker(
        validator: (data)
        {
          if(data!.isEmpty)
          {
            return 'This field is required';
          }
          return null;
        },
        onChanged: onChanged,
        type: DateTimePickerType.time,
        timePickerEntryModeInput: true,
        decoration: InputDecoration(
          errorStyle: Styles.errorStyle,
          label: Text('From', style: Styles.formFieldTimeAndDateStyle),
          prefixIcon: Icon(CupertinoIcons.time_solid, color: purple, size: 30.h, fill: 1),
          disabledBorder: Styles.formFieldOutlineInputBorder(),
          enabledBorder: Styles.formFieldOutlineInputBorder(),
          focusedBorder: Styles.formFieldOutlineInputBorder(),
          border: Styles.formFieldOutlineInputBorder(),
          focusedErrorBorder: Styles.formFieldOutlineInputBorder(),
          errorBorder: Styles.errorFormFieldOutlineInputBorder(),
          fillColor: white,
          filled: true,
        ),
      ),
    );
  }
}