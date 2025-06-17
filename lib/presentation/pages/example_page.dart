import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modsen_practice/presentation/blocs/auth_cubit.dart';


class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {

    final cubit = BlocProvider.of<AuthCubit>(context);

    return BlocConsumer(
        bloc: cubit,
        listener: (context, state){
          switch (state){
            case LoggedOutState():
              context.go('/welcome');
              break;
            default:
              break;
          }
        },
        builder: (context, state) => Container(
          child: Center(
            child: ElevatedButton(onPressed: (){
              cubit.logout();
            }, child: Text("logout"))
            ,),
        ),
      );
  }
}
