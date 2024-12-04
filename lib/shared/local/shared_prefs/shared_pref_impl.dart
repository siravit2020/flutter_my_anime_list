import 'dart:async';
import 'package:flutter_my_anime_list/shared/local/shared_prefs/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefImpl implements SharedPref {
  SharedPreferences? sharedPreferences;
  final Completer<SharedPreferences> initCompleter =
      Completer<SharedPreferences>();

  @override
  void init() {
    initCompleter.complete(SharedPreferences.getInstance());
  }

  @override
  bool get hasInitialized => sharedPreferences != null;

  @override
  Future<bool> set(String key, String data) async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences!.setString(key, data);
  }

  @override
  Future<Object?> get(String key) async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences!.get(key);
  }

  @override
  Future<bool> has(String key) async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences?.containsKey(key) ?? false;
  }

  @override
  Future<bool> remove(String key) async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences!.remove(key);
  }

  @override
  Future<void> clear() async {
    sharedPreferences = await initCompleter.future;
    await sharedPreferences!.clear();
  }
}
