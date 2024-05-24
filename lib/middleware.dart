// middleware.dart
import 'package:redux/redux.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'app_state.dart';
import 'actions.dart';
import 'user.dart';

void fetchUsersMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
  if (action is FetchUsersAction) {
    try {
      final response = await http.get(Uri.parse('https://lionfish-app-qkntx.ondigitalocean.app/api/users/'));
      if (response.statusCode == 200) {
        final List<dynamic> json = jsonDecode(response.body);
        final users = json.map((userJson) => User.fromJson(userJson)).toList();
        store.dispatch(FetchUsersSuccessAction(users));
      } else {
        store.dispatch(FetchUsersFailureAction('Failed to fetch users.'));
      }
    } catch (e) {
      store.dispatch(FetchUsersFailureAction(e.toString()));
    }
  }

  next(action);
}
