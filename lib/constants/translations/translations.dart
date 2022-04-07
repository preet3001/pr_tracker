//AppTranslation.dart
abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en_US": enUS,    
  };
}

final Map<String, String> enUS = {
  'login': 'Login',  
  'loginWithGoogle':'Login With Google'
};

