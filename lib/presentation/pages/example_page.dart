import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/login_register_bloc.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {

    final bloc = BlocProvider.of<LoginRegisterBloc>(context);

    return BlocConsumer(
        bloc: bloc,
        listener: (context, state){
          switch (state){
            case NotLoggedInState(): context.go('/welcome');
              break;
            default:
              break;
          }
        },
        builder: (context, state) => Container(
          child: Center(
            child: ElevatedButton(onPressed: (){
              bloc.add(TryLogOutEvent());
            }, child: Text("logout"))
            ,),
        ),
      );
  }
}
