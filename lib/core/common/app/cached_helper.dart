import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopblocs/core/common/cache.dart';

class CachedHelper {
  const CachedHelper._(this.prefs);

  final SharedPreferences prefs;

  static const _sessionToken = 'sessionToken';
   static const _userId = 'userId';
  static const _themeMode = 'themeMode';
  static const _firsTimerKey = 'is-first-time';

  Future<bool>cachedSessionToken(String? sessionToken) async {
   try {
      final result = prefs.setString(_sessionToken, sessionToken!);
      Cache.instace.setSessionToken(sessionToken);
      return result;
    } catch (e) {
      print('Error caching session token: $e');
      return false;
    }
  }
}


