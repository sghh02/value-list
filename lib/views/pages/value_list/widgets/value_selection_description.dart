import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valuelist/utils/assets.dart';
import 'package:valuelist/utils/theme.dart';

class ValueSelectionDescription extends StatelessWidget {
  const ValueSelectionDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildImageWithText(
          context,
          Assets.frame1,
          AppLocalizations.of(context).value_selection_page_description_1,
        ),
        _buildImageWithText(
          context,
          Assets.frame2,
          AppLocalizations.of(context).value_selection_page_description_2,
        ),
        _buildImageWithText(
          context,
          Assets.frame3,
          AppLocalizations.of(context).value_selection_page_description_3,
        ),
      ],
    );
  }

  Widget _buildImageWithText(
      BuildContext context, String imagePath, String text) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 96,
          width: 110,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColors.valueSelectionPageDescriptionTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
