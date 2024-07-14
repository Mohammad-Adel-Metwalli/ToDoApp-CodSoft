import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/Home/Data/Repositories/Models/note_model.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import 'bottom_sheet_body.dart';

Future<dynamic> customedShowModalBottomSheet(BuildContext context, {required String type, required NoteModel note}) => showModalBottomSheet(
  backgroundColor: white,
  isScrollControlled: true,
  context: context,
  shape: const RoundedRectangleBorder(borderRadius: Styles.customedBorderRadius),
  builder: (context) => BottomSheetBody(type: type, note: note),
);