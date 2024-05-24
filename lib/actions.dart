// actions.dart
import 'user.dart'; 
class FetchUsersAction {}

class FetchUsersSuccessAction {
  final List<User> users;

  FetchUsersSuccessAction(this.users);
}

class FetchUsersFailureAction {
  final String error;

  FetchUsersFailureAction(this.error);
}
