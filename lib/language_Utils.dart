import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:localization/en.dart';
import 'package:localization/gu.dart';
import 'package:localization/hi.dart';

class TranslationsUtils extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>
      {'en-Us': en, 'gu': gu, 'hi': hi};
}
