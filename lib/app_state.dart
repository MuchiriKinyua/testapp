// app_state.dart
import 'user.dart'; // Import User class from user.dart

class AppState {
  final List<User> users;
  final bool isLoading;
  final String error;

  AppState({
    required this.users,
    required this.isLoading,
    required this.error,
  });

  AppState.initialState()
      : users = [],
        isLoading = false,
        error = '';

  AppState copyWith({
    List<User>? users,
    bool? isLoading,
    String? error,
  }) {
    return AppState(
      users: users ?? this.users,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
