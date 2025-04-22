import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cache {
  Cache.internal();
  static final Cache instace = Cache.internal();
  String? _sessionToken;
  String? _userId;
  final themModeNotifier = ValueNotifier(ThemeMode.system);

  String? get sessionToken => _sessionToken;
  String? get userId => _userId;

void setSessionToken (String? newSession){
if(_sessionToken!=newSession)_sessionToken = newSession;
}

void setUserId (String? newUserId){
if(_userId!=newUserId)_userId = newUserId;
}

void setThemMode(ThemeMode thememode){
if(themModeNotifier!=thememode)themModeNotifier.value = thememode;
}

void resetSession(){
  setSessionToken(null);
 
  setUserId(null);
}

}
