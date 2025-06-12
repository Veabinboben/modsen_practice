import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:modsen_practice/data/repository/concrete_example_repo.dart';
import 'package:modsen_practice/presentation/blocs/example_cubit.dart';
import 'package:modsen_practice/presentation/pages/example_page.dart';
import "package:dio/dio.dart";
import 'package:firebase_core/firebase_core.dart';

Logger get logger => Log.instance;

class Log extends Logger {
  Log._() : super(printer: PrettyPrinter(printTime: true));
  static final instance = Log._();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var auth = FirebaseAuth.instance;

  var credentials = await auth.signInWithEmailAndPassword(email: "admin@admin.com", password: "123456");
  logger.i(credentials);
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: BlocProvider(
              create: (BuildContext context) => ExampleCubit(ConcreteExampleRepo(Dio())),
              child: ExamplePage(),
          ),
        ),
      ),
    );
  }
}

