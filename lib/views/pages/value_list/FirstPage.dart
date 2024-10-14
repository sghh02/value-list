import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valuelist/utils/assets.dart';
import 'package:valuelist/utils/theme.dart';
import 'package:valuelist/views/widgets/button.dart';

import '../../widgets/header.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppTheme.backgroundTopColor,
                    AppTheme.backgroundIntermediateColor,
                    AppTheme.backgroundBottomColor,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.humanImg,
                      height: 200,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context).first_page_main_text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 24),
                    CustomButton(
                      label:
                          AppLocalizations.of(context).first_page_button_text,
                      onPressed: () {
                        // TODO: 価値観リスト選定ページに遷移する処理
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
