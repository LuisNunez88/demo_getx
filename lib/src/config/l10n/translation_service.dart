import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'intl_en.dart';
import 'intl_es.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('es', 'ES');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'es_ES': esES,
      };
}
