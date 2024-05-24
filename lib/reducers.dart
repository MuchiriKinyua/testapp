// reducers.dart
import 'app_state.dart';
import 'actions.dart';
import 'user.dart'; 

AppState appReducer(AppState state, dynamic action) {
  if (action is FetchUsersAction) {
    return state.copyWith(isLoading: true, error: '');
  }

  if (action is FetchUsersSuccessAction) {
    // Ensure the users property has the correct type (List<User>)
    return state.copyWith(users: action.users, isLoading: false);
  }

  if (action is FetchUsersFailureAction) {
    return state.copyWith(error: action.error, isLoading: false);
  }

  return state;
}
