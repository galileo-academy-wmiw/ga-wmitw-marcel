class DarkMode {
  bool isDarkModeEnabled;

  factory DarkMode() => DarkMode._internal();

  DarkMode._internal({this.isDarkModeEnabled = false});
}