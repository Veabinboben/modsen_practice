import 'package:flashy_flushbar/flashy_flushbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:modsen_practice/data/repository/concrete_example_repo.dart';
import 'package:modsen_practice/data/sources/local_db.dart';
import 'package:modsen_practice/data/sources/remote_login.dart';
import 'package:modsen_practice/presentation/blocs/example_cubit.dart';
import "package:dio/dio.dart";
import 'package:firebase_core/firebase_core.dart';
import 'package:modsen_practice/presentation/blocs/login_register_bloc.dart';
import 'package:modsen_practice/presentation/pages/example_page.dart';
import 'package:modsen_practice/presentation/pages/login_register_page.dart';
import 'package:modsen_practice/presentation/pages/welcome_page.dart';
import 'data/repository/user_repo.dart';
import 'package:go_router/go_router.dart';

part 'router.dart';

Logger get logger => Log.instance;

class Log extends Logger {
  Log._() : super(printer: PrettyPrinter(printTime: true));
  static final instance = Log._();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // create: (BuildContext context) => ExampleCubit(ConcreteExampleRepo(Dio())),
      providers: [
        BlocProvider(create: (BuildContext context) => ExampleCubit(ConcreteExampleRepo(Dio()))),
        BlocProvider(create: (BuildContext context) {
          final dbSource = IsarDbSource();
          dbSource.init();
          final loginSource = FirebaseLoginSource();
          final repo = UserRepo(dbSource,loginSource);
          return LoginRegisterBloc(repo);
        }),
      ],
      child: MaterialApp.router(
        builder: FlashyFlushbarProvider.init(),
        themeMode: ThemeMode.dark,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        routerConfig: _router,
      ),
    );
    // return MaterialApp.router(
    //   routerConfig: _router,
    //   home: SafeArea(
    //     child: Scaffold(
    //       body: MultiBlocProvider(
    //           // create: (BuildContext context) => ExampleCubit(ConcreteExampleRepo(Dio())),
    //           providers: [
    //             BlocProvider(create: (BuildContext context) => ExampleCubit(ConcreteExampleRepo(Dio()))),
    //             BlocProvider(create: (BuildContext context) {
    //               final dbSource = IsarDbSource();
    //               final loginSource = FirebaseLoginSource();
    //               final repo = UserRepo(dbSource,loginSource);
    //               return LoginBloc(repo);
    //             }),
    //           ],
    //           child: LoginPage(),
    //       ),
    //     ),
    //   ),
    // );
  }
}


class NavScaffold extends StatelessWidget {
  const NavScaffold({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: navigationShell,
      ),
    );
  }
}
