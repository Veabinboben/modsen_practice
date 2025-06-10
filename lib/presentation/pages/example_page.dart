import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modsen_practice/presentation/blocs/example_cubit.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExampleCubit,String>(
        bloc: BlocProvider.of<ExampleCubit>(context),
        builder: (context, state) => Container(
          child: Text(state),
        ),
      );
  }
}
