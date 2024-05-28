import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class JastipKuyAuthUser {
  JastipKuyAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<JastipKuyAuthUser> jastipKuyAuthUserSubject =
    BehaviorSubject.seeded(JastipKuyAuthUser(loggedIn: false));
Stream<JastipKuyAuthUser> jastipKuyAuthUserStream() => jastipKuyAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
