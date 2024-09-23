import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter email',
          'welcome_back': 'Welcome\nBlack'
        },
        'ur_PK': {'email_hint': 'ای میل درج کریں'},
      };
}
