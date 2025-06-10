import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:modsen_practice/data/repository/concrete_example_repo.dart';
import 'package:modsen_practice/data/repository/concrete_example_repo.dart';
import 'package:modsen_practice/presentation/blocs/example_cubit.dart';
import 'package:modsen_practice/presentation/pages/example_page.dart';
import "package:dio/dio.dart";

Logger get logger => Log.instance;

class Log extends Logger {
  Log._() : super(printer: PrettyPrinter(printTime: true));
  static final instance = Log._();
}

void main() {
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

