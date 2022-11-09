import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/util/constants/perf_constants.dart';

class PrefsUtils {
  static Future<void> saveToken(String token) async{
  final prefs =   await SharedPreferences.getInstance();
  prefs.setString(PrefConstants.token, token);
  }

  static Future<String> getToken() async {
      final prefs =   await SharedPreferences.getInstance();
      return prefs.getString(PrefConstants.token) ?? '' ;
  }
}