import 'package:cheers/app_bloc_observer.dart';
import 'package:cheers/auth/auth_repository.dart';
import 'package:cheers/auth/bloc/auth_bloc.dart';
import 'package:cheers/login/bloc/login_bloc.dart';
import 'package:cheers/register/bloc/register_bloc.dart';
import 'package:cheers/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:go_router/go_router.dart';

import 'firebase_options.dart';

Future<void> main() async {
  BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      if (kDebugMode) {
        await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
      }
      runApp(const MyApp());
    },
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, FirebaseAuth? auth})
      : _auth = auth,
        super(key: key);

  final FirebaseAuth? _auth;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (_) => AuthRepository(firebaseAuth: _auth),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) => AuthBloc(
              authRepository: context.read<AuthRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => LoginBloc(
              authRepository: context.read<AuthRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => RegisterBloc(
              authRepository: context.read<AuthRepository>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          supportedLocales: const [Locale('en')],
          localizationsDelegates: const [
            ...AppLocalizations.localizationsDelegates,
            FormBuilderLocalizations.delegate
          ],
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          darkTheme: ThemeData(
            colorSchemeSeed: Colors.amber,
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            colorSchemeSeed: Colors.amber,
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}

enum PopupMenuAction { logout }

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  _logOut(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.logoutRequested());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                unauthenticated: () => const SizedBox(),
                authenticated: (_) => IconButton(
                  onPressed: () => _logOut(context),
                  icon: const Icon(Icons.logout),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('Login'),
              onPressed: () => context.pushNamed(
                appRoutes[AppRoutes.login]!,
              ),
            ),
            TextButton(
              child: const Text('Register'),
              onPressed: () => context.pushNamed(
                appRoutes[AppRoutes.register]!,
              ),
            ),
            TextButton(
              child: const Text('Home'),
              onPressed: () => context.goNamed(
                appRoutes[AppRoutes.home]!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
