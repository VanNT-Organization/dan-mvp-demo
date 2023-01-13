import 'package:flutter/material.dart';

import '../../../l10n/gen/app_localizations.dart';

extension L10nEx on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}