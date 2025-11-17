enum Local { en, ar }

class AppConstant {
  static Local appLocale = Local.en;

  void changeLocale(Local locale) {
    appLocale = locale;
  }
}
