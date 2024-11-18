import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valuelist/utils/assets.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(54);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 28,
          ),
          const SizedBox(width: 5),
          Text(
            AppLocalizations.of(context).title,
          ),
        ],
      ),
      centerTitle: true, // タイトルを中央揃え
    );
  }
}
