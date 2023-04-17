import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/drop_down_button.dart';
import '../widgets/text_widget.dart';

class Services {
  static Future<void> showModelSheet({required BuildContext context}) async {
    await showModalBottomSheet(
        backgroundColor: scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: const [
                Flexible(
                  child: TextWidget(
                    label: "Chosen Model",
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 23),
                Flexible(child: ModelDropDownWidget()),
              ],
            ),
          );
        });
  }
}
