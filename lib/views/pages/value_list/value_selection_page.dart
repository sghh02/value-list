import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:valuelist/utils/assets.dart';
import 'package:valuelist/views/pages/value_list/widgets/value_selection_card.dart';
import 'package:valuelist/views/pages/value_list/widgets/value_selection_description.dart';
import 'package:valuelist/views/widgets/header.dart';

import '../../../navigation/route_paths.dart';
import '../../../utils/theme.dart';
import '../../widgets/button.dart';

class ValueSelectionPage extends StatefulWidget {
  const ValueSelectionPage({super.key});

  @override
  _ValueSelectionPageState createState() => _ValueSelectionPageState();
}

class _ValueSelectionPageState extends State<ValueSelectionPage> {
  List<String> questions = [
    "なにか重要なことを達成する",
    "変化と成長を維持する",
    "人生の意味や方向性を定める",
    "他者に依存しないで生きる",
    "自分に自信を持ち、自分について深い理解を持つ"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.backgroundTopColor,
                AppColors.backgroundIntermediateColor,
                AppColors.backgroundBottomColor,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 24,
              right: 16,
              bottom: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.lamp,
                  height: 40,
                ),
                const SizedBox(height: 8),
                Text(
                  AppLocalizations.of(context).value_selection_page_title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.valueSelectionPageTitleColor,
                  ),
                ),
                const SizedBox(height: 8),
                const ValueSelectionDescription(),
                const SizedBox(height: 20),
                ValueSelectionCard(questions: questions),
                const SizedBox(height: 16),
                CustomButton(
                  label: "2/10ページ目へ",
                  onPressed: () {
                    context.go(RoutePaths.firstPage);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
