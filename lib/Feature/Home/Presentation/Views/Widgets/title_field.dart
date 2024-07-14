import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class TitleField extends StatelessWidget
{
  const TitleField({super.key, this.onChanged, });
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        onChanged: onChanged,
        style: Styles.formFieldTextStyle,
        validator: (data)
        {
          if(data!.isEmpty)
          {
            return 'This field is required';
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.title_rounded, size: 30.h, color: purple),
          label: Text('Title', style: Styles.formFieldTextStyle),
          disabledBorder: Styles.formFieldOutlineInputBorder(),
          enabledBorder: Styles.formFieldOutlineInputBorder(),
          focusedBorder: Styles.formFieldOutlineInputBorder(),
          border: Styles.formFieldOutlineInputBorder(),
          focusedErrorBorder: Styles.errorFormFieldOutlineInputBorder(),
          errorBorder: Styles.errorFormFieldOutlineInputBorder(),
          errorStyle: Styles.errorStyle,
          fillColor: white,
          filled: true,
        ),
      ),
    );
  }
}