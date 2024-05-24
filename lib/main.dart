// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'app_state.dart';
import 'reducers.dart';
import 'middleware.dart';
import 'actions.dart';
import 'user.dart';

void main() {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.initialState(),
    middleware: [fetchUsersMiddleware],
  );

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Redux Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Redux Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(FetchUsersAction());
              },
              child: Text('Fetch Users'),
            ),
            StoreConnector<AppState, bool>(
              converter: (store) => store.state.isLoading,
              builder: (context, isLoading) {
                return isLoading ? CircularProgressIndicator() : Container();
              },
            ),
StoreConnector<AppState, List<User>>(
  converter: (Store<AppState> store) => store.state.users,
  builder: (BuildContext context, List<User> users) {
    return Expanded(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          final user = users[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.email),
          );
        },
      ),
    );
  },
),
            StoreConnector<AppState, String>(
              converter: (store) => store.state.error,
              builder: (context, error) {
                return error.isNotEmpty ? Text(error, style: TextStyle(color: Colors.red)) : Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
