import 'package:flashy_flushbar/flashy_flushbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:modsen_practice/data/repository/concrete_example_repo.dart';
import 'package:modsen_practice/data/repository/user_repo.dart';
import 'package:modsen_practice/data/sources/local_user_db.dart';
import 'package:modsen_practice/domain/repository/abstract_biometry_repo.dart';
import 'package:modsen_practice/domain/repository/abstract_crypto_repo.dart';
import 'package:modsen_practice/domain/repository/abstract_login_register_repo.dart';

import 'package:modsen_practice/presentation/blocs/auth_cubit.dart';
import 'package:modsen_practice/presentation/blocs/example_cubit.dart';
import "package:dio/dio.dart";
import 'package:firebase_core/firebase_core.dart';
import 'package:modsen_practice/presentation/pages/crypto_list_page.dart';
import 'package:modsen_practice/presentation/pages/example_page.dart';
import 'package:modsen_practice/presentation/pages/login_register_page.dart';
import 'package:modsen_practice/presentation/pages/welcome_page.dart';

import 'package:go_router/go_router.dart';
import 'package:modsen_practice/presentation/widgets/nav_bar.dart';

import 'data/repository/biometry_repo.dart';
import 'data/repository/crypto_repo.dart';
import 'data/repository/login_register_repo.dart';
import 'data/sources/remote_crypto.dart';
import 'data/sources/remote_login.dart';
import 'domain/repository/abstract_user_repo.dart';

part 'router.dart';

Logger get logger => Log.instance;
final getIt = GetIt.instance;

class Log extends Logger {
  Log._() : super(printer: PrettyPrinter(printTime: true));
  static final instance = Log._();
}

Future<void> setup() async {
  await IsarUserDbSource.openUserDb();
  final dbSource =  IsarUserDbSource();
  final _key = dotenv.env['APIKEY'];
  if (_key == null){
    logger.e("INVALID APIKEY");
  }
  getIt..registerSingleton<AbstractUserRepo>(UserRepo(dbSource))
  ..registerSingleton<AbstractLoginRegisterRepo>(LoginRegisterRepo(FirebaseLoginSource()))
  ..registerSingleton<AbstractBiometryRepo>(BiometryRepo())
  ..registerSingleton<AbstractCryptoRepo>(CryptoRepo(RemoteCryptoSource(Dio()), _key!));
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: ".env");
  await setup();

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
        //BlocProvider(create: (BuildContext context) => LoginRegisterBloc()),
        BlocProvider(create: (BuildContext context) {
          final repo = getIt.get<AbstractUserRepo>();
          return AuthCubit(repo);
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
    final route = GoRouter.of(context).routerDelegate.currentConfiguration.uri;
    return SafeArea(
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: route.path.contains('/crypto') ?
        NavBar():
        SizedBox(height: 0,),
      ),
    );
  }
}
