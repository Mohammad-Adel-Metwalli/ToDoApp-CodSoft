import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class DatePicking extends StatelessWidget
{
  const DatePicking({super.key, this.onChanged,});
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
        type: DateTimePickerType.date,
        firstDate: DateTime.now(),
        lastDate: DateTime(3000),
        decoration: InputDecoration(
          errorStyle: Styles.errorStyle,
          label: Text('Date', style: Styles.formFieldTimeAndDateStyle),
          prefixIcon: Icon(Icons.date_range_rounded, color: purple, size: 30.h, fill: 1),
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