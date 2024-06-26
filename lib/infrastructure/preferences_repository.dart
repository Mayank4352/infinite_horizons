part of 'package:infinite_horizons/domain/preferences_controller.dart';

class _PreferencesRepository extends PreferencesController {
  late SharedPreferences preferences;

  @override
  Future init() async => preferences = await SharedPreferences.getInstance();

  @override
  String? getString(String key) => preferences.getString(key);

  @override
  bool? getBool(String key) => preferences.getBool(key);

  @override
  void remove(String key) => preferences.remove(key);

  @override
  void setString(String key, String value) => preferences.setString(key, value);

  @override
  void setBool(String key, bool value) => preferences.setBool(key, value);
}
